.class public Lcom/android/camera/widget/ScaleMeterItem;
.super Landroid/widget/LinearLayout;
.source "ScaleMeterItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/widget/ScaleMeterItem$OnButtonClickedListener;,
        Lcom/android/camera/widget/ScaleMeterItem$OnLevelChangedListener;
    }
.end annotation


# instance fields
.field private LEVEL_NUMBER_MAX:I

.field private LEVEL_NUMBER_MIN:I

.field protected final TAG:Ljava/lang/String;

.field private mOnButtonClickedListener:Lcom/android/camera/widget/ScaleMeterItem$OnButtonClickedListener;

.field private mOnLevelChangedListener:Lcom/android/camera/widget/ScaleMeterItem$OnLevelChangedListener;

.field private m_Degree:Landroid/widget/ImageView;

.field private m_Icon:Landroid/widget/ImageView;

.field private m_Level:I

.field private m_MinusBtn:Lcom/htc/widget/HtcAddButton;

.field private m_MinusBtnOnClickListener:Landroid/view/View$OnClickListener;

.field private m_PlusBtn:Lcom/htc/widget/HtcAddButton;

.field private m_PlusBtnOnClickListener:Landroid/view/View$OnClickListener;

.field private m_ScaleTextColumn:Landroid/widget/LinearLayout;

.field private m_Title:Landroid/widget/TextView;

.field private m_TitleBar:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1
    .parameter "context"
    .parameter "level_max"
    .parameter "level_min"

    .prologue
    .line 110
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 21
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/widget/ScaleMeterItem;->TAG:Ljava/lang/String;

    .line 59
    new-instance v0, Lcom/android/camera/widget/ScaleMeterItem$1;

    invoke-direct {v0, p0}, Lcom/android/camera/widget/ScaleMeterItem$1;-><init>(Lcom/android/camera/widget/ScaleMeterItem;)V

    iput-object v0, p0, Lcom/android/camera/widget/ScaleMeterItem;->m_MinusBtnOnClickListener:Landroid/view/View$OnClickListener;

    .line 69
    new-instance v0, Lcom/android/camera/widget/ScaleMeterItem$2;

    invoke-direct {v0, p0}, Lcom/android/camera/widget/ScaleMeterItem$2;-><init>(Lcom/android/camera/widget/ScaleMeterItem;)V

    iput-object v0, p0, Lcom/android/camera/widget/ScaleMeterItem;->m_PlusBtnOnClickListener:Landroid/view/View$OnClickListener;

    .line 112
    iput p2, p0, Lcom/android/camera/widget/ScaleMeterItem;->LEVEL_NUMBER_MAX:I

    .line 113
    iput p3, p0, Lcom/android/camera/widget/ScaleMeterItem;->LEVEL_NUMBER_MIN:I

    .line 115
    invoke-direct {p0}, Lcom/android/camera/widget/ScaleMeterItem;->initialize()V

    .line 116
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/widget/ScaleMeterItem;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/android/camera/widget/ScaleMeterItem;->decreaseLevel()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/widget/ScaleMeterItem;)Lcom/android/camera/widget/ScaleMeterItem$OnButtonClickedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/camera/widget/ScaleMeterItem;->mOnButtonClickedListener:Lcom/android/camera/widget/ScaleMeterItem$OnButtonClickedListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/widget/ScaleMeterItem;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/android/camera/widget/ScaleMeterItem;->increaseLevel()V

    return-void
.end method

.method private decreaseLevel()V
    .locals 2

    .prologue
    .line 216
    iget v0, p0, Lcom/android/camera/widget/ScaleMeterItem;->m_Level:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/camera/widget/ScaleMeterItem;->m_Level:I

    .line 217
    iget v0, p0, Lcom/android/camera/widget/ScaleMeterItem;->m_Level:I

    iget v1, p0, Lcom/android/camera/widget/ScaleMeterItem;->LEVEL_NUMBER_MIN:I

    if-ge v0, v1, :cond_0

    .line 218
    iget v0, p0, Lcom/android/camera/widget/ScaleMeterItem;->LEVEL_NUMBER_MIN:I

    iput v0, p0, Lcom/android/camera/widget/ScaleMeterItem;->m_Level:I

    .line 221
    :goto_0
    return-void

    .line 220
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/widget/ScaleMeterItem;->onLevelChanged()V

    goto :goto_0
.end method

.method private increaseLevel()V
    .locals 2

    .prologue
    .line 205
    iget v0, p0, Lcom/android/camera/widget/ScaleMeterItem;->m_Level:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/widget/ScaleMeterItem;->m_Level:I

    .line 206
    iget v0, p0, Lcom/android/camera/widget/ScaleMeterItem;->m_Level:I

    iget v1, p0, Lcom/android/camera/widget/ScaleMeterItem;->LEVEL_NUMBER_MAX:I

    if-le v0, v1, :cond_0

    .line 207
    iget v0, p0, Lcom/android/camera/widget/ScaleMeterItem;->LEVEL_NUMBER_MAX:I

    iput v0, p0, Lcom/android/camera/widget/ScaleMeterItem;->m_Level:I

    .line 210
    :goto_0
    return-void

    .line 209
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/widget/ScaleMeterItem;->onLevelChanged()V

    goto :goto_0
.end method

.method private initialize()V
    .locals 9

    .prologue
    const v3, 0x2080009

    const v2, 0x2080008

    const v1, 0x2080007

    const/4 v8, 0x0

    .line 120
    invoke-virtual {p0}, Lcom/android/camera/widget/ScaleMeterItem;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    .line 121
    .local v7, li:Landroid/view/LayoutInflater;
    const v0, 0x7f03002d

    invoke-virtual {v7, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 124
    .local v6, base:Landroid/widget/LinearLayout;
    const v0, 0x7f0800e7

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/camera/widget/ScaleMeterItem;->m_TitleBar:Landroid/widget/LinearLayout;

    .line 125
    const v0, 0x7f08006a

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/widget/ScaleMeterItem;->m_Icon:Landroid/widget/ImageView;

    .line 126
    const v0, 0x7f08007c

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/widget/ScaleMeterItem;->m_Title:Landroid/widget/TextView;

    .line 128
    const v0, 0x7f08007f

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/camera/widget/ScaleMeterItem;->m_ScaleTextColumn:Landroid/widget/LinearLayout;

    .line 130
    const v0, 0x7f08007d

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcAddButton;

    iput-object v0, p0, Lcom/android/camera/widget/ScaleMeterItem;->m_MinusBtn:Lcom/htc/widget/HtcAddButton;

    .line 131
    const v0, 0x7f080080

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcAddButton;

    iput-object v0, p0, Lcom/android/camera/widget/ScaleMeterItem;->m_PlusBtn:Lcom/htc/widget/HtcAddButton;

    .line 133
    iget-object v0, p0, Lcom/android/camera/widget/ScaleMeterItem;->m_MinusBtn:Lcom/htc/widget/HtcAddButton;

    iget-object v4, p0, Lcom/android/camera/widget/ScaleMeterItem;->m_MinusBtnOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcAddButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    iget-object v0, p0, Lcom/android/camera/widget/ScaleMeterItem;->m_PlusBtn:Lcom/htc/widget/HtcAddButton;

    iget-object v4, p0, Lcom/android/camera/widget/ScaleMeterItem;->m_PlusBtnOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcAddButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    iget-object v0, p0, Lcom/android/camera/widget/ScaleMeterItem;->m_MinusBtn:Lcom/htc/widget/HtcAddButton;

    const v4, 0x2080010

    const v5, 0x208000f

    invoke-virtual/range {v0 .. v5}, Lcom/htc/widget/HtcAddButton;->setButtonDrawableResources(IIIII)V

    .line 144
    iget-object v0, p0, Lcom/android/camera/widget/ScaleMeterItem;->m_PlusBtn:Lcom/htc/widget/HtcAddButton;

    const v4, 0x2080003

    const v5, 0x2080002

    invoke-virtual/range {v0 .. v5}, Lcom/htc/widget/HtcAddButton;->setButtonDrawableResources(IIIII)V

    .line 151
    iget-object v0, p0, Lcom/android/camera/widget/ScaleMeterItem;->m_MinusBtn:Lcom/htc/widget/HtcAddButton;

    invoke-virtual {v0, v8}, Lcom/htc/widget/HtcAddButton;->setFocusable(Z)V

    .line 152
    iget-object v0, p0, Lcom/android/camera/widget/ScaleMeterItem;->m_PlusBtn:Lcom/htc/widget/HtcAddButton;

    invoke-virtual {v0, v8}, Lcom/htc/widget/HtcAddButton;->setFocusable(Z)V

    .line 154
    const v0, 0x7f08007e

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/widget/ScaleMeterItem;->m_Degree:Landroid/widget/ImageView;

    .line 156
    invoke-virtual {p0}, Lcom/android/camera/widget/ScaleMeterItem;->refreshLevel()V

    .line 157
    return-void
.end method


# virtual methods
.method public getDegreeImage(I)I
    .locals 4
    .parameter "level"

    .prologue
    .line 236
    const/4 v0, 0x0

    .line 238
    .local v0, resId:I
    packed-switch p1, :pswitch_data_0

    .line 255
    iget-object v1, p0, Lcom/android/camera/widget/ScaleMeterItem;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDegreeImage() - level :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    :goto_0
    return v0

    .line 240
    :pswitch_0
    const v0, 0x7f02008e

    .line 241
    goto :goto_0

    .line 243
    :pswitch_1
    const v0, 0x7f02008d

    .line 244
    goto :goto_0

    .line 246
    :pswitch_2
    const v0, 0x7f02008c

    .line 247
    goto :goto_0

    .line 249
    :pswitch_3
    const v0, 0x7f02008f

    .line 250
    goto :goto_0

    .line 252
    :pswitch_4
    const v0, 0x7f020090

    .line 253
    goto :goto_0

    .line 238
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getLevel()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/android/camera/widget/ScaleMeterItem;->m_Level:I

    return v0
.end method

.method public getScaleTextColumn()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/camera/widget/ScaleMeterItem;->m_ScaleTextColumn:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getTitleBar()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/camera/widget/ScaleMeterItem;->m_TitleBar:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public onLevelChanged()V
    .locals 3

    .prologue
    .line 179
    iget v1, p0, Lcom/android/camera/widget/ScaleMeterItem;->m_Level:I

    invoke-virtual {p0, v1}, Lcom/android/camera/widget/ScaleMeterItem;->getDegreeImage(I)I

    move-result v0

    .line 180
    .local v0, resid:I
    if-eqz v0, :cond_1

    .line 181
    iget-object v1, p0, Lcom/android/camera/widget/ScaleMeterItem;->m_Degree:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 185
    :goto_0
    iget-object v1, p0, Lcom/android/camera/widget/ScaleMeterItem;->mOnLevelChangedListener:Lcom/android/camera/widget/ScaleMeterItem$OnLevelChangedListener;

    if-eqz v1, :cond_0

    .line 186
    iget-object v1, p0, Lcom/android/camera/widget/ScaleMeterItem;->mOnLevelChangedListener:Lcom/android/camera/widget/ScaleMeterItem$OnLevelChangedListener;

    iget v2, p0, Lcom/android/camera/widget/ScaleMeterItem;->m_Level:I

    invoke-interface {v1, p0, v2}, Lcom/android/camera/widget/ScaleMeterItem$OnLevelChangedListener;->onLevelChanged(Lcom/android/camera/widget/ScaleMeterItem;I)V

    .line 187
    :cond_0
    return-void

    .line 183
    :cond_1
    iget-object v1, p0, Lcom/android/camera/widget/ScaleMeterItem;->TAG:Ljava/lang/String;

    const-string v2, "onLevelChanged() - resid == 0"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public refreshLevel()V
    .locals 3

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/android/camera/widget/ScaleMeterItem;->updateLevel()I

    move-result v1

    iput v1, p0, Lcom/android/camera/widget/ScaleMeterItem;->m_Level:I

    .line 165
    iget-object v1, p0, Lcom/android/camera/widget/ScaleMeterItem;->m_Degree:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 167
    iget v1, p0, Lcom/android/camera/widget/ScaleMeterItem;->m_Level:I

    invoke-virtual {p0, v1}, Lcom/android/camera/widget/ScaleMeterItem;->getDegreeImage(I)I

    move-result v0

    .line 168
    .local v0, resid:I
    if-eqz v0, :cond_1

    .line 169
    iget-object v1, p0, Lcom/android/camera/widget/ScaleMeterItem;->m_Degree:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 173
    .end local v0           #resid:I
    :cond_0
    :goto_0
    return-void

    .line 171
    .restart local v0       #resid:I
    :cond_1
    iget-object v1, p0, Lcom/android/camera/widget/ScaleMeterItem;->TAG:Ljava/lang/String;

    const-string v2, "onLevelChanged() - resid == 0"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setLevel(I)V
    .locals 2
    .parameter "level"

    .prologue
    .line 96
    iput p1, p0, Lcom/android/camera/widget/ScaleMeterItem;->m_Level:I

    .line 98
    iget v0, p0, Lcom/android/camera/widget/ScaleMeterItem;->m_Level:I

    iget v1, p0, Lcom/android/camera/widget/ScaleMeterItem;->LEVEL_NUMBER_MAX:I

    if-le v0, v1, :cond_1

    .line 99
    iget v0, p0, Lcom/android/camera/widget/ScaleMeterItem;->LEVEL_NUMBER_MAX:I

    iput v0, p0, Lcom/android/camera/widget/ScaleMeterItem;->m_Level:I

    .line 103
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/widget/ScaleMeterItem;->onLevelChanged()V

    .line 104
    return-void

    .line 100
    :cond_1
    iget v0, p0, Lcom/android/camera/widget/ScaleMeterItem;->m_Level:I

    iget v1, p0, Lcom/android/camera/widget/ScaleMeterItem;->LEVEL_NUMBER_MIN:I

    if-ge v0, v1, :cond_0

    .line 101
    iget v0, p0, Lcom/android/camera/widget/ScaleMeterItem;->LEVEL_NUMBER_MIN:I

    iput v0, p0, Lcom/android/camera/widget/ScaleMeterItem;->m_Level:I

    goto :goto_0
.end method

.method public final setOnButtonClickedListener(Lcom/android/camera/widget/ScaleMeterItem$OnButtonClickedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 194
    iput-object p1, p0, Lcom/android/camera/widget/ScaleMeterItem;->mOnButtonClickedListener:Lcom/android/camera/widget/ScaleMeterItem$OnButtonClickedListener;

    .line 195
    return-void
.end method

.method public final setOnLevelChangedListener(Lcom/android/camera/widget/ScaleMeterItem$OnLevelChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 198
    iput-object p1, p0, Lcom/android/camera/widget/ScaleMeterItem;->mOnLevelChangedListener:Lcom/android/camera/widget/ScaleMeterItem$OnLevelChangedListener;

    .line 199
    return-void
.end method

.method public updateLevel()I
    .locals 1

    .prologue
    .line 228
    const/4 v0, 0x0

    return v0
.end method
