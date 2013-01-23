.class public Lcom/android/camera/menu/MenuItem;
.super Ljava/lang/Object;
.source "MenuItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/menu/MenuItem$ItemViewInfo;
    }
.end annotation


# instance fields
.field private m_Background:Ljava/lang/Object;

.field private m_Icon:Ljava/lang/Object;

.field private m_Id:I

.field private m_IsChecked:Z

.field private m_IsEnabled:Z

.field private m_IsSelectable:Z

.field private m_IsVisible:Z

.field private m_Items:[Lcom/android/camera/menu/MenuItem;

.field m_MenuListView:Lcom/android/camera/menu/MenuListView;

.field private m_Parent:Lcom/android/camera/menu/MenuItem;

.field private m_Summary:Ljava/lang/Object;

.field private m_Title:Ljava/lang/Object;

.field private final m_VisibleItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/menu/MenuItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 58
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-boolean v0, p0, Lcom/android/camera/menu/MenuItem;->m_IsEnabled:Z

    .line 30
    iput-boolean v0, p0, Lcom/android/camera/menu/MenuItem;->m_IsSelectable:Z

    .line 31
    iput-boolean v0, p0, Lcom/android/camera/menu/MenuItem;->m_IsVisible:Z

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/menu/MenuItem;->m_VisibleItems:Ljava/util/ArrayList;

    .line 58
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .parameter "titleResId"
    .parameter "summaryResId"

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/camera/menu/MenuItem;-><init>(III)V

    .line 62
    return-void
.end method

.method public constructor <init>(III)V
    .locals 1
    .parameter "titleResId"
    .parameter "summaryResId"
    .parameter "id"

    .prologue
    const/4 v0, 0x1

    .line 64
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-boolean v0, p0, Lcom/android/camera/menu/MenuItem;->m_IsEnabled:Z

    .line 30
    iput-boolean v0, p0, Lcom/android/camera/menu/MenuItem;->m_IsSelectable:Z

    .line 31
    iput-boolean v0, p0, Lcom/android/camera/menu/MenuItem;->m_IsVisible:Z

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/menu/MenuItem;->m_VisibleItems:Ljava/util/ArrayList;

    .line 65
    iput p3, p0, Lcom/android/camera/menu/MenuItem;->m_Id:I

    .line 66
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/menu/MenuItem;->m_Title:Ljava/lang/Object;

    .line 67
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/menu/MenuItem;->m_Summary:Ljava/lang/Object;

    .line 68
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter "titleString"
    .parameter "summaryResId"

    .prologue
    const/4 v0, 0x1

    .line 71
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-boolean v0, p0, Lcom/android/camera/menu/MenuItem;->m_IsEnabled:Z

    .line 30
    iput-boolean v0, p0, Lcom/android/camera/menu/MenuItem;->m_IsSelectable:Z

    .line 31
    iput-boolean v0, p0, Lcom/android/camera/menu/MenuItem;->m_IsVisible:Z

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/menu/MenuItem;->m_VisibleItems:Ljava/util/ArrayList;

    .line 72
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/menu/MenuItem;->m_Id:I

    .line 73
    iput-object p1, p0, Lcom/android/camera/menu/MenuItem;->m_Title:Ljava/lang/Object;

    .line 74
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/menu/MenuItem;->m_Summary:Ljava/lang/Object;

    .line 75
    return-void
.end method

.method private getViewDefault(Landroid/content/Context;Landroid/view/LayoutInflater;ILandroid/view/View;)Landroid/view/View;
    .locals 5
    .parameter "context"
    .parameter "inflater"
    .parameter "levels"
    .parameter "convertView"

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 142
    invoke-virtual {p0, p2, p4}, Lcom/android/camera/menu/MenuItem;->getView(Landroid/view/LayoutInflater;Landroid/view/View;)Landroid/view/View;

    move-result-object p4

    .line 143
    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/menu/MenuItem$ItemViewInfo;

    .line 146
    .local v0, itemInfo:Lcom/android/camera/menu/MenuItem$ItemViewInfo;
    iget-object v1, v0, Lcom/android/camera/menu/MenuItem$ItemViewInfo;->iconImageView:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 148
    iget-object v1, p0, Lcom/android/camera/menu/MenuItem;->m_Icon:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/Integer;

    if-eqz v1, :cond_5

    .line 150
    iget-object v2, v0, Lcom/android/camera/menu/MenuItem$ItemViewInfo;->iconImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/camera/menu/MenuItem;->m_Icon:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 151
    iget-object v1, v0, Lcom/android/camera/menu/MenuItem$ItemViewInfo;->iconImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 168
    :cond_0
    :goto_0
    iget-object v1, v0, Lcom/android/camera/menu/MenuItem$ItemViewInfo;->radioButton:Lcom/htc/widget/HtcRadioButton;

    if-eqz v1, :cond_1

    .line 169
    iget-object v1, v0, Lcom/android/camera/menu/MenuItem$ItemViewInfo;->radioButton:Lcom/htc/widget/HtcRadioButton;

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcRadioButton;->setVisibility(I)V

    .line 172
    :cond_1
    iget-object v1, v0, Lcom/android/camera/menu/MenuItem$ItemViewInfo;->checkBox:Lcom/htc/widget/HtcCheckBox;

    if-eqz v1, :cond_2

    .line 173
    iget-object v1, v0, Lcom/android/camera/menu/MenuItem$ItemViewInfo;->checkBox:Lcom/htc/widget/HtcCheckBox;

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcCheckBox;->setVisibility(I)V

    .line 176
    :cond_2
    iget-object v1, v0, Lcom/android/camera/menu/MenuItem$ItemViewInfo;->checkIcon:Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    .line 178
    iget-object v1, v0, Lcom/android/camera/menu/MenuItem$ItemViewInfo;->checkIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 182
    :cond_3
    iget-object v1, p0, Lcom/android/camera/menu/MenuItem;->m_VisibleItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_8

    .line 185
    iget-object v1, v0, Lcom/android/camera/menu/MenuItem$ItemViewInfo;->expandButton:Lcom/htc/widget/HtcIndicatorButton;

    if-eqz v1, :cond_4

    .line 186
    iget-object v1, v0, Lcom/android/camera/menu/MenuItem$ItemViewInfo;->expandButton:Lcom/htc/widget/HtcIndicatorButton;

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcIndicatorButton;->setVisibility(I)V

    .line 196
    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/android/camera/menu/MenuItem;->m_Background:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/Integer;

    if-eqz v1, :cond_9

    .line 197
    iget-object v1, p0, Lcom/android/camera/menu/MenuItem;->m_Background:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p4, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 209
    :goto_2
    iget-object v1, v0, Lcom/android/camera/menu/MenuItem$ItemViewInfo;->titleTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/camera/menu/MenuItem;->m_Title:Ljava/lang/Object;

    invoke-direct {p0, v1, v2}, Lcom/android/camera/menu/MenuItem;->setText(Landroid/widget/TextView;Ljava/lang/Object;)V

    .line 210
    iget-object v1, v0, Lcom/android/camera/menu/MenuItem$ItemViewInfo;->summaryTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/camera/menu/MenuItem;->m_Summary:Ljava/lang/Object;

    invoke-direct {p0, v1, v2}, Lcom/android/camera/menu/MenuItem;->setText(Landroid/widget/TextView;Ljava/lang/Object;)V

    .line 213
    iget-boolean v1, p0, Lcom/android/camera/menu/MenuItem;->m_IsEnabled:Z

    invoke-direct {p0, p4, v1}, Lcom/android/camera/menu/MenuItem;->setEnabled(Landroid/view/View;Z)V

    .line 216
    return-object p4

    .line 153
    :cond_5
    iget-object v1, p0, Lcom/android/camera/menu/MenuItem;->m_Icon:Ljava/lang/Object;

    instance-of v1, v1, Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_6

    .line 155
    iget-object v2, v0, Lcom/android/camera/menu/MenuItem$ItemViewInfo;->iconImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/camera/menu/MenuItem;->m_Icon:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 156
    iget-object v1, v0, Lcom/android/camera/menu/MenuItem$ItemViewInfo;->iconImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 158
    :cond_6
    iget-object v1, p0, Lcom/android/camera/menu/MenuItem;->m_Icon:Ljava/lang/Object;

    instance-of v1, v1, Landroid/graphics/Bitmap;

    if-eqz v1, :cond_7

    .line 160
    iget-object v2, v0, Lcom/android/camera/menu/MenuItem$ItemViewInfo;->iconImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/camera/menu/MenuItem;->m_Icon:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 161
    iget-object v1, v0, Lcom/android/camera/menu/MenuItem$ItemViewInfo;->iconImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 164
    :cond_7
    iget-object v1, v0, Lcom/android/camera/menu/MenuItem$ItemViewInfo;->iconImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 191
    :cond_8
    iget-object v1, v0, Lcom/android/camera/menu/MenuItem$ItemViewInfo;->expandButton:Lcom/htc/widget/HtcIndicatorButton;

    if-eqz v1, :cond_4

    .line 192
    iget-object v1, v0, Lcom/android/camera/menu/MenuItem$ItemViewInfo;->expandButton:Lcom/htc/widget/HtcIndicatorButton;

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcIndicatorButton;->setVisibility(I)V

    goto :goto_1

    .line 198
    :cond_9
    iget-object v1, p0, Lcom/android/camera/menu/MenuItem;->m_Background:Ljava/lang/Object;

    instance-of v1, v1, Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_a

    .line 199
    iget-object v1, p0, Lcom/android/camera/menu/MenuItem;->m_Background:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p4, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 202
    :cond_a
    const/4 v1, 0x2

    if-ne p3, v1, :cond_b

    .line 203
    const v1, 0x7f02009e

    invoke-virtual {p4, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_2

    .line 205
    :cond_b
    invoke-virtual {p4, v3}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_2
.end method

.method private setEnabled(Landroid/view/View;Z)V
    .locals 3
    .parameter "view"
    .parameter "isEnabled"

    .prologue
    .line 335
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 336
    instance-of v2, p1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 338
    check-cast v1, Landroid/view/ViewGroup;

    .line 339
    .local v1, viewGroup:Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 340
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/android/camera/menu/MenuItem;->setEnabled(Landroid/view/View;Z)V

    .line 339
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 342
    .end local v0           #i:I
    .end local v1           #viewGroup:Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method private setText(Landroid/widget/TextView;Ljava/lang/Object;)V
    .locals 5
    .parameter "textView"
    .parameter "value"

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 440
    if-nez p1, :cond_0

    .line 477
    .end local p2
    :goto_0
    return-void

    .line 442
    .restart local p2
    :cond_0
    if-nez p2, :cond_1

    .line 444
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 449
    :cond_1
    instance-of v2, p2, Ljava/lang/Integer;

    if-eqz v2, :cond_3

    .line 451
    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 452
    .local v0, id:I
    if-lez v0, :cond_2

    .line 454
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 455
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 458
    :cond_2
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 463
    .end local v0           #id:I
    .restart local p2
    :cond_3
    instance-of v2, p2, Ljava/lang/String;

    if-eqz v2, :cond_5

    move-object v1, p2

    .line 465
    check-cast v1, Ljava/lang/String;

    .line 466
    .local v1, str:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    .line 468
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 469
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 472
    :cond_4
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 475
    .end local v1           #str:Ljava/lang/String;
    :cond_5
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 476
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public final getId()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/android/camera/menu/MenuItem;->m_Id:I

    return v0
.end method

.method public final getItems()[Lcom/android/camera/menu/MenuItem;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/camera/menu/MenuItem;->m_Items:[Lcom/android/camera/menu/MenuItem;

    return-object v0
.end method

.method public getMenuListView()Lcom/android/camera/menu/MenuListView;
    .locals 1

    .prologue
    .line 527
    iget-object v0, p0, Lcom/android/camera/menu/MenuItem;->m_MenuListView:Lcom/android/camera/menu/MenuListView;

    return-object v0
.end method

.method public final getParent()Lcom/android/camera/menu/MenuItem;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/camera/menu/MenuItem;->m_Parent:Lcom/android/camera/menu/MenuItem;

    return-object v0
.end method

.method final getView(Landroid/content/Context;Landroid/view/LayoutInflater;ILandroid/view/View;)Landroid/view/View;
    .locals 1
    .parameter "context"
    .parameter "inflater"
    .parameter "levels"
    .parameter "convertView"

    .prologue
    .line 137
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/camera/menu/MenuItem;->getViewOverride(Landroid/content/Context;Landroid/view/LayoutInflater;ILandroid/view/View;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected final getView(Landroid/view/LayoutInflater;Landroid/view/View;)Landroid/view/View;
    .locals 4
    .parameter "inflater"
    .parameter "convertView"

    .prologue
    .line 107
    const/4 v0, 0x0

    .line 108
    .local v0, itemInfo:Lcom/android/camera/menu/MenuItem$ItemViewInfo;
    if-eqz p2, :cond_0

    .line 110
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 111
    .local v1, tag:Ljava/lang/Object;
    instance-of v2, v1, Lcom/android/camera/menu/MenuItem$ItemViewInfo;

    if-eqz v2, :cond_2

    move-object v0, v1

    .line 112
    check-cast v0, Lcom/android/camera/menu/MenuItem$ItemViewInfo;

    .line 118
    .end local v1           #tag:Ljava/lang/Object;
    :cond_0
    :goto_0
    if-nez p2, :cond_1

    .line 120
    const v2, 0x7f030018

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 121
    new-instance v0, Lcom/android/camera/menu/MenuItem$ItemViewInfo;

    .end local v0           #itemInfo:Lcom/android/camera/menu/MenuItem$ItemViewInfo;
    invoke-direct {v0}, Lcom/android/camera/menu/MenuItem$ItemViewInfo;-><init>()V

    .line 122
    .restart local v0       #itemInfo:Lcom/android/camera/menu/MenuItem$ItemViewInfo;
    const v2, 0x7f08006a

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/android/camera/menu/MenuItem$ItemViewInfo;->iconImageView:Landroid/widget/ImageView;

    .line 123
    const v2, 0x7f08007c

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/android/camera/menu/MenuItem$ItemViewInfo;->titleTextView:Landroid/widget/TextView;

    .line 124
    const v2, 0x7f0800b2

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/android/camera/menu/MenuItem$ItemViewInfo;->summaryTextView:Landroid/widget/TextView;

    .line 125
    const v2, 0x7f0800b3

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcRadioButton;

    iput-object v2, v0, Lcom/android/camera/menu/MenuItem$ItemViewInfo;->radioButton:Lcom/htc/widget/HtcRadioButton;

    .line 126
    const v2, 0x7f080025

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcCheckBox;

    iput-object v2, v0, Lcom/android/camera/menu/MenuItem$ItemViewInfo;->checkBox:Lcom/htc/widget/HtcCheckBox;

    .line 127
    const v2, 0x202000d

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcIndicatorButton;

    iput-object v2, v0, Lcom/android/camera/menu/MenuItem$ItemViewInfo;->expandButton:Lcom/htc/widget/HtcIndicatorButton;

    .line 128
    const v2, 0x7f0800b4

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/android/camera/menu/MenuItem$ItemViewInfo;->checkIcon:Landroid/widget/ImageView;

    .line 129
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 133
    :cond_1
    return-object p2

    .line 114
    .restart local v1       #tag:Ljava/lang/Object;
    :cond_2
    const/4 p2, 0x0

    goto :goto_0
.end method

.method protected getViewOverride(Landroid/content/Context;Landroid/view/LayoutInflater;ILandroid/view/View;)Landroid/view/View;
    .locals 1
    .parameter "context"
    .parameter "inflater"
    .parameter "levels"
    .parameter "convertView"

    .prologue
    .line 220
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera/menu/MenuItem;->getViewDefault(Landroid/content/Context;Landroid/view/LayoutInflater;ILandroid/view/View;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method getVisibleItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/menu/MenuItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 228
    iget-object v0, p0, Lcom/android/camera/menu/MenuItem;->m_VisibleItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final hasVisibleItems()Z
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/camera/menu/MenuItem;->m_VisibleItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isChecked()Z
    .locals 1

    .prologue
    .line 244
    iget-boolean v0, p0, Lcom/android/camera/menu/MenuItem;->m_IsChecked:Z

    return v0
.end method

.method public isCustomView()Z
    .locals 1

    .prologue
    .line 248
    const/4 v0, 0x0

    return v0
.end method

.method public final isEnabled()Z
    .locals 1

    .prologue
    .line 252
    iget-boolean v0, p0, Lcom/android/camera/menu/MenuItem;->m_IsEnabled:Z

    return v0
.end method

.method public final isSelectable()Z
    .locals 1

    .prologue
    .line 256
    iget-boolean v0, p0, Lcom/android/camera/menu/MenuItem;->m_IsSelectable:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/menu/MenuItem;->m_IsEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isVisible()Z
    .locals 1

    .prologue
    .line 260
    iget-boolean v0, p0, Lcom/android/camera/menu/MenuItem;->m_IsVisible:Z

    return v0
.end method

.method protected final notifyItemContentClicked()V
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/camera/menu/MenuItem;->m_MenuListView:Lcom/android/camera/menu/MenuListView;

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/android/camera/menu/MenuItem;->m_MenuListView:Lcom/android/camera/menu/MenuListView;

    invoke-virtual {v0, p0}, Lcom/android/camera/menu/MenuListView;->notifyItemContentClicked(Lcom/android/camera/menu/MenuItem;)V

    .line 270
    :cond_0
    return-void
.end method

.method protected final notifyItemsChanged()V
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/android/camera/menu/MenuItem;->m_MenuListView:Lcom/android/camera/menu/MenuListView;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/android/camera/menu/MenuItem;->m_MenuListView:Lcom/android/camera/menu/MenuListView;

    invoke-virtual {v0}, Lcom/android/camera/menu/MenuListView;->notifyItemsChanged()V

    .line 279
    :cond_0
    return-void
.end method

.method protected final notifyItemsInvalidated()V
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/android/camera/menu/MenuItem;->m_MenuListView:Lcom/android/camera/menu/MenuListView;

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/android/camera/menu/MenuItem;->m_MenuListView:Lcom/android/camera/menu/MenuListView;

    invoke-virtual {v0}, Lcom/android/camera/menu/MenuListView;->notifyItemsInvalidated()V

    .line 288
    :cond_0
    return-void
.end method

.method protected onClicked()Z
    .locals 1

    .prologue
    .line 295
    const/4 v0, 0x0

    return v0
.end method

.method protected onVisibilityChanged(Z)V
    .locals 0
    .parameter "isVisible"

    .prologue
    .line 303
    if-eqz p1, :cond_0

    .line 304
    invoke-virtual {p0}, Lcom/android/camera/menu/MenuItem;->updateContent()V

    .line 305
    :cond_0
    return-void
.end method

.method public setBackground(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 312
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/menu/MenuItem;->m_Background:Ljava/lang/Object;

    .line 313
    invoke-virtual {p0}, Lcom/android/camera/menu/MenuItem;->notifyItemsInvalidated()V

    .line 314
    return-void
.end method

.method public setChecked(Z)V
    .locals 1
    .parameter "isChecked"

    .prologue
    .line 317
    iget-boolean v0, p0, Lcom/android/camera/menu/MenuItem;->m_IsChecked:Z

    if-eq v0, p1, :cond_0

    .line 319
    iput-boolean p1, p0, Lcom/android/camera/menu/MenuItem;->m_IsChecked:Z

    .line 320
    iget-boolean v0, p0, Lcom/android/camera/menu/MenuItem;->m_IsVisible:Z

    if-eqz v0, :cond_0

    .line 321
    invoke-virtual {p0}, Lcom/android/camera/menu/MenuItem;->notifyItemsInvalidated()V

    .line 323
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "isEnabled"

    .prologue
    .line 326
    iget-boolean v0, p0, Lcom/android/camera/menu/MenuItem;->m_IsEnabled:Z

    if-eq v0, p1, :cond_0

    .line 328
    iput-boolean p1, p0, Lcom/android/camera/menu/MenuItem;->m_IsEnabled:Z

    .line 329
    iget-boolean v0, p0, Lcom/android/camera/menu/MenuItem;->m_IsVisible:Z

    if-eqz v0, :cond_0

    .line 330
    invoke-virtual {p0}, Lcom/android/camera/menu/MenuItem;->notifyItemsInvalidated()V

    .line 332
    :cond_0
    return-void
.end method

.method public setIcon(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 345
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/menu/MenuItem;->m_Icon:Ljava/lang/Object;

    .line 346
    invoke-virtual {p0}, Lcom/android/camera/menu/MenuItem;->notifyItemsInvalidated()V

    .line 347
    return-void
.end method

.method public final setId(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 376
    iput p1, p0, Lcom/android/camera/menu/MenuItem;->m_Id:I

    .line 377
    return-void
.end method

.method public setItems(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/menu/MenuItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 384
    .local p1, items:Ljava/util/List;,"Ljava/util/List<Lcom/android/camera/menu/MenuItem;>;"
    if-eqz p1, :cond_0

    .line 386
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v0, v1, [Lcom/android/camera/menu/MenuItem;

    .line 387
    .local v0, array:[Lcom/android/camera/menu/MenuItem;
    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 388
    invoke-virtual {p0, v0}, Lcom/android/camera/menu/MenuItem;->setItems([Lcom/android/camera/menu/MenuItem;)V

    .line 392
    .end local v0           #array:[Lcom/android/camera/menu/MenuItem;
    :goto_0
    return-void

    .line 391
    :cond_0
    const/4 v1, 0x0

    check-cast v1, [Lcom/android/camera/menu/MenuItem;

    invoke-virtual {p0, v1}, Lcom/android/camera/menu/MenuItem;->setItems([Lcom/android/camera/menu/MenuItem;)V

    goto :goto_0
.end method

.method public setItems([Lcom/android/camera/menu/MenuItem;)V
    .locals 3
    .parameter "items"

    .prologue
    const/4 v2, 0x0

    .line 396
    iget-object v1, p0, Lcom/android/camera/menu/MenuItem;->m_Items:[Lcom/android/camera/menu/MenuItem;

    if-eqz v1, :cond_0

    .line 398
    iget-object v1, p0, Lcom/android/camera/menu/MenuItem;->m_Items:[Lcom/android/camera/menu/MenuItem;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 400
    iget-object v1, p0, Lcom/android/camera/menu/MenuItem;->m_Items:[Lcom/android/camera/menu/MenuItem;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Lcom/android/camera/menu/MenuItem;->setMenuListView(Lcom/android/camera/menu/MenuListView;)V

    .line 401
    iget-object v1, p0, Lcom/android/camera/menu/MenuItem;->m_Items:[Lcom/android/camera/menu/MenuItem;

    aget-object v1, v1, v0

    iput-object v2, v1, Lcom/android/camera/menu/MenuItem;->m_Parent:Lcom/android/camera/menu/MenuItem;

    .line 398
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 406
    .end local v0           #i:I
    :cond_0
    iput-object p1, p0, Lcom/android/camera/menu/MenuItem;->m_Items:[Lcom/android/camera/menu/MenuItem;

    .line 407
    if-eqz p1, :cond_1

    .line 409
    array-length v1, p1

    add-int/lit8 v0, v1, -0x1

    .restart local v0       #i:I
    :goto_1
    if-ltz v0, :cond_1

    .line 411
    aget-object v1, p1, v0

    iget-object v2, p0, Lcom/android/camera/menu/MenuItem;->m_MenuListView:Lcom/android/camera/menu/MenuListView;

    invoke-virtual {v1, v2}, Lcom/android/camera/menu/MenuItem;->setMenuListView(Lcom/android/camera/menu/MenuListView;)V

    .line 412
    aget-object v1, p1, v0

    iput-object p0, v1, Lcom/android/camera/menu/MenuItem;->m_Parent:Lcom/android/camera/menu/MenuItem;

    .line 409
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 417
    .end local v0           #i:I
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/menu/MenuItem;->notifyItemsChanged()V

    .line 418
    return-void
.end method

.method final setMenuListView(Lcom/android/camera/menu/MenuListView;)V
    .locals 2
    .parameter "listView"

    .prologue
    .line 350
    iput-object p1, p0, Lcom/android/camera/menu/MenuItem;->m_MenuListView:Lcom/android/camera/menu/MenuListView;

    .line 351
    iget-object v1, p0, Lcom/android/camera/menu/MenuItem;->m_Items:[Lcom/android/camera/menu/MenuItem;

    if-eqz v1, :cond_0

    .line 353
    iget-object v1, p0, Lcom/android/camera/menu/MenuItem;->m_Items:[Lcom/android/camera/menu/MenuItem;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 354
    iget-object v1, p0, Lcom/android/camera/menu/MenuItem;->m_Items:[Lcom/android/camera/menu/MenuItem;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/android/camera/menu/MenuItem;->setMenuListView(Lcom/android/camera/menu/MenuListView;)V

    .line 353
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 356
    .end local v0           #i:I
    :cond_0
    return-void
.end method

.method public setSelectable(Z)V
    .locals 0
    .parameter "isSelectable"

    .prologue
    .line 359
    iput-boolean p1, p0, Lcom/android/camera/menu/MenuItem;->m_IsSelectable:Z

    .line 360
    return-void
.end method

.method public setSummary(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 425
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/menu/MenuItem;->m_Summary:Ljava/lang/Object;

    .line 426
    invoke-virtual {p0}, Lcom/android/camera/menu/MenuItem;->notifyItemsInvalidated()V

    .line 427
    return-void
.end method

.method public setSummary(Ljava/lang/String;)V
    .locals 0
    .parameter "str"

    .prologue
    .line 430
    iput-object p1, p0, Lcom/android/camera/menu/MenuItem;->m_Summary:Ljava/lang/Object;

    .line 431
    invoke-virtual {p0}, Lcom/android/camera/menu/MenuItem;->notifyItemsInvalidated()V

    .line 432
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 484
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/menu/MenuItem;->m_Title:Ljava/lang/Object;

    .line 485
    invoke-virtual {p0}, Lcom/android/camera/menu/MenuItem;->notifyItemsInvalidated()V

    .line 486
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "str"

    .prologue
    .line 489
    iput-object p1, p0, Lcom/android/camera/menu/MenuItem;->m_Title:Ljava/lang/Object;

    .line 490
    invoke-virtual {p0}, Lcom/android/camera/menu/MenuItem;->notifyItemsInvalidated()V

    .line 491
    return-void
.end method

.method public setVisibility(Z)V
    .locals 1
    .parameter "isVisible"

    .prologue
    .line 363
    iget-boolean v0, p0, Lcom/android/camera/menu/MenuItem;->m_IsVisible:Z

    if-eq v0, p1, :cond_0

    .line 365
    iput-boolean p1, p0, Lcom/android/camera/menu/MenuItem;->m_IsVisible:Z

    .line 366
    invoke-virtual {p0, p1}, Lcom/android/camera/menu/MenuItem;->onVisibilityChanged(Z)V

    .line 367
    invoke-virtual {p0}, Lcom/android/camera/menu/MenuItem;->notifyItemsChanged()V

    .line 369
    :cond_0
    return-void
.end method

.method public updateContent()V
    .locals 2

    .prologue
    .line 498
    iget-object v1, p0, Lcom/android/camera/menu/MenuItem;->m_VisibleItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 499
    iget-object v1, p0, Lcom/android/camera/menu/MenuItem;->m_VisibleItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v1}, Lcom/android/camera/menu/MenuItem;->updateContent()V

    .line 498
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 500
    :cond_0
    return-void
.end method

.method final updateVisibleItems(Z)V
    .locals 3
    .parameter "updateSubItems"

    .prologue
    .line 507
    iget-object v2, p0, Lcom/android/camera/menu/MenuItem;->m_VisibleItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 508
    iget-object v2, p0, Lcom/android/camera/menu/MenuItem;->m_Items:[Lcom/android/camera/menu/MenuItem;

    if-eqz v2, :cond_1

    .line 510
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/camera/menu/MenuItem;->m_Items:[Lcom/android/camera/menu/MenuItem;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 512
    iget-object v2, p0, Lcom/android/camera/menu/MenuItem;->m_Items:[Lcom/android/camera/menu/MenuItem;

    aget-object v1, v2, v0

    .line 513
    .local v1, item:Lcom/android/camera/menu/MenuItem;
    invoke-virtual {v1}, Lcom/android/camera/menu/MenuItem;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 515
    iget-object v2, p0, Lcom/android/camera/menu/MenuItem;->m_VisibleItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 516
    if-eqz p1, :cond_0

    .line 517
    invoke-virtual {v1, p1}, Lcom/android/camera/menu/MenuItem;->updateVisibleItems(Z)V

    .line 510
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 521
    .end local v0           #i:I
    .end local v1           #item:Lcom/android/camera/menu/MenuItem;
    :cond_1
    return-void
.end method
