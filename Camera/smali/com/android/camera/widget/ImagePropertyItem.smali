.class public Lcom/android/camera/widget/ImagePropertyItem;
.super Landroid/widget/LinearLayout;
.source "ImagePropertyItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/widget/ImagePropertyItem$OnButtonClickedListener;,
        Lcom/android/camera/widget/ImagePropertyItem$OnLevelChangedListener;
    }
.end annotation


# static fields
.field public static final PROPERTY_LEVEL_NUMBER_MAX:I = 0x4

.field public static final PROPERTY_LEVEL_NUMBER_MIN:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ImagePropertyItem"

.field public static final VALUE_BRIGHTNESS:I = 0x0

.field public static final VALUE_CONTRAST:I = 0x1

.field public static final VALUE_SATURATION:I = 0x2

.field public static final VALUE_SHARPNESS:I = 0x3


# instance fields
.field private final mImageSettings:Lcom/android/camera/ImageSettings;

.field private mImageSettingsController:Lcom/android/camera/IImageSettingsController;

.field private mOnButtonClickedListener:Lcom/android/camera/widget/ImagePropertyItem$OnButtonClickedListener;

.field private mOnLevelChangedListener:Lcom/android/camera/widget/ImagePropertyItem$OnLevelChangedListener;

.field private mValueProperty:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private m_Context:Landroid/content/Context;

.field private m_Degree:Landroid/widget/ImageView;

.field private m_Icon:Landroid/widget/ImageView;

.field private m_Level:I

.field private m_MinusBtn:Lcom/htc/widget/HtcAddButton;

.field private m_PlusBtn:Lcom/htc/widget/HtcAddButton;

.field private m_Title:Landroid/widget/TextView;

.field private m_TypeValue:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 74
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 75
    iput-object p1, p0, Lcom/android/camera/widget/ImagePropertyItem;->m_Context:Landroid/content/Context;

    .line 76
    new-instance v1, Lcom/android/camera/ImageSettings;

    iget-object v0, p0, Lcom/android/camera/widget/ImagePropertyItem;->m_Context:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/HTCCamera;

    invoke-direct {v1, v0}, Lcom/android/camera/ImageSettings;-><init>(Lcom/android/camera/HTCCamera;)V

    iput-object v1, p0, Lcom/android/camera/widget/ImagePropertyItem;->mImageSettings:Lcom/android/camera/ImageSettings;

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/widget/ImagePropertyItem;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/android/camera/widget/ImagePropertyItem;->decreaseLevel()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/widget/ImagePropertyItem;)Lcom/android/camera/widget/ImagePropertyItem$OnButtonClickedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/camera/widget/ImagePropertyItem;->mOnButtonClickedListener:Lcom/android/camera/widget/ImagePropertyItem$OnButtonClickedListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/widget/ImagePropertyItem;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/android/camera/widget/ImagePropertyItem;->increaseLevel()V

    return-void
.end method

.method private decreaseLevel()V
    .locals 1

    .prologue
    .line 338
    iget v0, p0, Lcom/android/camera/widget/ImagePropertyItem;->m_Level:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/camera/widget/ImagePropertyItem;->m_Level:I

    .line 339
    iget v0, p0, Lcom/android/camera/widget/ImagePropertyItem;->m_Level:I

    if-gez v0, :cond_0

    .line 340
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/widget/ImagePropertyItem;->m_Level:I

    .line 343
    :goto_0
    return-void

    .line 342
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/widget/ImagePropertyItem;->onLevelChanged()V

    goto :goto_0
.end method

.method private increaseLevel()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 327
    iget v0, p0, Lcom/android/camera/widget/ImagePropertyItem;->m_Level:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/widget/ImagePropertyItem;->m_Level:I

    .line 328
    iget v0, p0, Lcom/android/camera/widget/ImagePropertyItem;->m_Level:I

    if-le v0, v1, :cond_0

    .line 329
    iput v1, p0, Lcom/android/camera/widget/ImagePropertyItem;->m_Level:I

    .line 332
    :goto_0
    return-void

    .line 331
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/widget/ImagePropertyItem;->onLevelChanged()V

    goto :goto_0
.end method

.method private mapFromLevel(I)F
    .locals 3
    .parameter "level"

    .prologue
    const/4 v2, 0x2

    .line 364
    const/4 v0, 0x2

    .line 365
    .local v0, defaultValue:I
    if-ge p1, v0, :cond_0

    .line 366
    add-int/lit8 v1, p1, 0x0

    int-to-float v1, v1

    int-to-float v2, v2

    div-float/2addr v1, v2

    const/high16 v2, 0x3f80

    sub-float/2addr v1, v2

    .line 367
    :goto_0
    return v1

    :cond_0
    sub-int v1, p1, v0

    int-to-float v1, v1

    int-to-float v2, v2

    div-float/2addr v1, v2

    goto :goto_0
.end method

.method private mapToLevel(F)I
    .locals 5
    .parameter "normValue"

    .prologue
    const/4 v4, 0x2

    const/high16 v2, 0x3f80

    const/high16 v3, 0x3f00

    .line 351
    const/high16 v1, -0x4080

    cmpg-float v1, p1, v1

    if-gez v1, :cond_1

    .line 352
    const/high16 p1, -0x4080

    .line 357
    :cond_0
    :goto_0
    const/4 v0, 0x2

    .line 358
    .local v0, defaultValue:I
    const/4 v1, 0x0

    cmpg-float v1, p1, v1

    if-gez v1, :cond_2

    .line 359
    int-to-float v1, v4

    add-float/2addr v2, p1

    mul-float/2addr v1, v2

    add-float/2addr v1, v3

    float-to-int v1, v1

    add-int/lit8 v1, v1, 0x0

    .line 360
    :goto_1
    return v1

    .line 353
    .end local v0           #defaultValue:I
    :cond_1
    cmpl-float v1, p1, v2

    if-lez v1, :cond_0

    .line 354
    const/high16 p1, 0x3f80

    goto :goto_0

    .line 360
    .restart local v0       #defaultValue:I
    :cond_2
    int-to-float v1, v4

    mul-float/2addr v1, p1

    add-float/2addr v1, v3

    float-to-int v1, v1

    add-int/2addr v1, v0

    goto :goto_1
.end method

.method private setBrightnessValue()V
    .locals 4

    .prologue
    .line 242
    iget v1, p0, Lcom/android/camera/widget/ImagePropertyItem;->m_Level:I

    invoke-direct {p0, v1}, Lcom/android/camera/widget/ImagePropertyItem;->mapFromLevel(I)F

    move-result v0

    .line 243
    .local v0, nromValue:F
    iget-object v1, p0, Lcom/android/camera/widget/ImagePropertyItem;->mValueProperty:Lcom/android/camera/property/Property;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    .line 244
    iget-object v1, p0, Lcom/android/camera/widget/ImagePropertyItem;->mImageSettings:Lcom/android/camera/ImageSettings;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iput-object v2, v1, Lcom/android/camera/ImageSettings;->brightness:Ljava/lang/Float;

    .line 247
    iget-object v1, p0, Lcom/android/camera/widget/ImagePropertyItem;->mImageSettingsController:Lcom/android/camera/IImageSettingsController;

    if-eqz v1, :cond_0

    .line 248
    iget-object v1, p0, Lcom/android/camera/widget/ImagePropertyItem;->mImageSettingsController:Lcom/android/camera/IImageSettingsController;

    iget-object v2, p0, Lcom/android/camera/widget/ImagePropertyItem;->mImageSettings:Lcom/android/camera/ImageSettings;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/IImageSettingsController;->applyImageSettings(Lcom/android/camera/ImageSettings;Z)V

    .line 249
    :cond_0
    return-void
.end method

.method private setContrastValue()V
    .locals 4

    .prologue
    .line 256
    iget v1, p0, Lcom/android/camera/widget/ImagePropertyItem;->m_Level:I

    invoke-direct {p0, v1}, Lcom/android/camera/widget/ImagePropertyItem;->mapFromLevel(I)F

    move-result v0

    .line 257
    .local v0, nromValue:F
    iget-object v1, p0, Lcom/android/camera/widget/ImagePropertyItem;->mValueProperty:Lcom/android/camera/property/Property;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    .line 258
    iget-object v1, p0, Lcom/android/camera/widget/ImagePropertyItem;->mImageSettings:Lcom/android/camera/ImageSettings;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iput-object v2, v1, Lcom/android/camera/ImageSettings;->contrast:Ljava/lang/Float;

    .line 261
    iget-object v1, p0, Lcom/android/camera/widget/ImagePropertyItem;->mImageSettingsController:Lcom/android/camera/IImageSettingsController;

    if-eqz v1, :cond_0

    .line 262
    iget-object v1, p0, Lcom/android/camera/widget/ImagePropertyItem;->mImageSettingsController:Lcom/android/camera/IImageSettingsController;

    iget-object v2, p0, Lcom/android/camera/widget/ImagePropertyItem;->mImageSettings:Lcom/android/camera/ImageSettings;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/IImageSettingsController;->applyImageSettings(Lcom/android/camera/ImageSettings;Z)V

    .line 263
    :cond_0
    return-void
.end method

.method private setSaturationValue()V
    .locals 4

    .prologue
    .line 270
    iget v1, p0, Lcom/android/camera/widget/ImagePropertyItem;->m_Level:I

    invoke-direct {p0, v1}, Lcom/android/camera/widget/ImagePropertyItem;->mapFromLevel(I)F

    move-result v0

    .line 271
    .local v0, nromValue:F
    iget-object v1, p0, Lcom/android/camera/widget/ImagePropertyItem;->mValueProperty:Lcom/android/camera/property/Property;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    .line 272
    iget-object v1, p0, Lcom/android/camera/widget/ImagePropertyItem;->mImageSettings:Lcom/android/camera/ImageSettings;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iput-object v2, v1, Lcom/android/camera/ImageSettings;->saturation:Ljava/lang/Float;

    .line 275
    iget-object v1, p0, Lcom/android/camera/widget/ImagePropertyItem;->mImageSettingsController:Lcom/android/camera/IImageSettingsController;

    if-eqz v1, :cond_0

    .line 276
    iget-object v1, p0, Lcom/android/camera/widget/ImagePropertyItem;->mImageSettingsController:Lcom/android/camera/IImageSettingsController;

    iget-object v2, p0, Lcom/android/camera/widget/ImagePropertyItem;->mImageSettings:Lcom/android/camera/ImageSettings;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/IImageSettingsController;->applyImageSettings(Lcom/android/camera/ImageSettings;Z)V

    .line 277
    :cond_0
    return-void
.end method

.method private setSharpnessValue()V
    .locals 4

    .prologue
    .line 284
    iget v1, p0, Lcom/android/camera/widget/ImagePropertyItem;->m_Level:I

    invoke-direct {p0, v1}, Lcom/android/camera/widget/ImagePropertyItem;->mapFromLevel(I)F

    move-result v0

    .line 285
    .local v0, nromValue:F
    iget-object v1, p0, Lcom/android/camera/widget/ImagePropertyItem;->mValueProperty:Lcom/android/camera/property/Property;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    .line 286
    iget-object v1, p0, Lcom/android/camera/widget/ImagePropertyItem;->mImageSettings:Lcom/android/camera/ImageSettings;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iput-object v2, v1, Lcom/android/camera/ImageSettings;->sharpness:Ljava/lang/Float;

    .line 289
    iget-object v1, p0, Lcom/android/camera/widget/ImagePropertyItem;->mImageSettingsController:Lcom/android/camera/IImageSettingsController;

    if-eqz v1, :cond_0

    .line 290
    iget-object v1, p0, Lcom/android/camera/widget/ImagePropertyItem;->mImageSettingsController:Lcom/android/camera/IImageSettingsController;

    iget-object v2, p0, Lcom/android/camera/widget/ImagePropertyItem;->mImageSettings:Lcom/android/camera/ImageSettings;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/IImageSettingsController;->applyImageSettings(Lcom/android/camera/ImageSettings;Z)V

    .line 291
    :cond_0
    return-void
.end method


# virtual methods
.method public getDegreeImage(I)I
    .locals 1
    .parameter "level"

    .prologue
    .line 387
    const/4 v0, 0x0

    .line 389
    .local v0, resId:I
    packed-switch p1, :pswitch_data_0

    .line 407
    :goto_0
    return v0

    .line 391
    :pswitch_0
    const v0, 0x7f02008e

    .line 392
    goto :goto_0

    .line 394
    :pswitch_1
    const v0, 0x7f02008d

    .line 395
    goto :goto_0

    .line 397
    :pswitch_2
    const v0, 0x7f02008c

    .line 398
    goto :goto_0

    .line 400
    :pswitch_3
    const v0, 0x7f02008f

    .line 401
    goto :goto_0

    .line 403
    :pswitch_4
    const v0, 0x7f020090

    goto :goto_0

    .line 389
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

.method public initialize(ILcom/android/camera/CameraThread;)V
    .locals 10
    .parameter "value"
    .parameter "thread"

    .prologue
    const v3, 0x2080009

    const v2, 0x2080008

    const v1, 0x2080007

    const/4 v9, 0x0

    .line 83
    iput p1, p0, Lcom/android/camera/widget/ImagePropertyItem;->m_TypeValue:I

    .line 85
    iget-object v0, p0, Lcom/android/camera/widget/ImagePropertyItem;->m_Context:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getComponentManager()Lcom/android/camera/component/UIComponentManager;

    move-result-object v0

    const-class v4, Lcom/android/camera/IImageSettingsController;

    invoke-virtual {v0, v4}, Lcom/android/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/IImageSettingsController;

    iput-object v0, p0, Lcom/android/camera/widget/ImagePropertyItem;->mImageSettingsController:Lcom/android/camera/IImageSettingsController;

    .line 87
    iget-object v0, p0, Lcom/android/camera/widget/ImagePropertyItem;->m_Context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    .line 88
    .local v7, li:Landroid/view/LayoutInflater;
    const v0, 0x7f030011

    invoke-virtual {v7, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 91
    .local v6, base:Landroid/widget/LinearLayout;
    const v0, 0x7f08006a

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/widget/ImagePropertyItem;->m_Icon:Landroid/widget/ImageView;

    .line 92
    const v0, 0x7f08007c

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/widget/ImagePropertyItem;->m_Title:Landroid/widget/TextView;

    .line 94
    invoke-virtual {p2}, Lcom/android/camera/CameraThread;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v8

    .line 95
    .local v8, settings:Lcom/android/camera/CameraSettings;
    packed-switch p1, :pswitch_data_0

    .line 117
    const-string v0, "ImagePropertyItem"

    const-string v1, "initialize - Unknown value!!"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    :goto_0
    return-void

    .line 97
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/widget/ImagePropertyItem;->m_Icon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/camera/widget/ImagePropertyItem;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0200b1

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 98
    iget-object v0, p0, Lcom/android/camera/widget/ImagePropertyItem;->m_Title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/camera/widget/ImagePropertyItem;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a012a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v0, v8, Lcom/android/camera/CameraSettings;->brightness:Lcom/android/camera/property/Property;

    iput-object v0, p0, Lcom/android/camera/widget/ImagePropertyItem;->mValueProperty:Lcom/android/camera/property/Property;

    .line 121
    :goto_1
    const v0, 0x7f08007d

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcAddButton;

    iput-object v0, p0, Lcom/android/camera/widget/ImagePropertyItem;->m_MinusBtn:Lcom/htc/widget/HtcAddButton;

    .line 122
    const v0, 0x7f080080

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcAddButton;

    iput-object v0, p0, Lcom/android/camera/widget/ImagePropertyItem;->m_PlusBtn:Lcom/htc/widget/HtcAddButton;

    .line 124
    iget-object v0, p0, Lcom/android/camera/widget/ImagePropertyItem;->m_MinusBtn:Lcom/htc/widget/HtcAddButton;

    const v4, 0x2080010

    const v5, 0x208000f

    invoke-virtual/range {v0 .. v5}, Lcom/htc/widget/HtcAddButton;->setButtonDrawableResources(IIIII)V

    .line 131
    iget-object v0, p0, Lcom/android/camera/widget/ImagePropertyItem;->m_PlusBtn:Lcom/htc/widget/HtcAddButton;

    const v4, 0x2080003

    const v5, 0x2080002

    invoke-virtual/range {v0 .. v5}, Lcom/htc/widget/HtcAddButton;->setButtonDrawableResources(IIIII)V

    .line 138
    iget-object v0, p0, Lcom/android/camera/widget/ImagePropertyItem;->m_MinusBtn:Lcom/htc/widget/HtcAddButton;

    invoke-virtual {v0, v9}, Lcom/htc/widget/HtcAddButton;->setFocusable(Z)V

    .line 140
    iget-object v0, p0, Lcom/android/camera/widget/ImagePropertyItem;->m_PlusBtn:Lcom/htc/widget/HtcAddButton;

    invoke-virtual {v0, v9}, Lcom/htc/widget/HtcAddButton;->setFocusable(Z)V

    .line 143
    invoke-virtual {p0}, Lcom/android/camera/widget/ImagePropertyItem;->updateLevel()I

    move-result v0

    iput v0, p0, Lcom/android/camera/widget/ImagePropertyItem;->m_Level:I

    .line 144
    const v0, 0x7f08007e

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/widget/ImagePropertyItem;->m_Degree:Landroid/widget/ImageView;

    .line 145
    iget-object v0, p0, Lcom/android/camera/widget/ImagePropertyItem;->m_Degree:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/camera/widget/ImagePropertyItem;->m_Level:I

    invoke-virtual {p0, v1}, Lcom/android/camera/widget/ImagePropertyItem;->getDegreeImage(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 152
    iget-object v0, p0, Lcom/android/camera/widget/ImagePropertyItem;->m_MinusBtn:Lcom/htc/widget/HtcAddButton;

    new-instance v1, Lcom/android/camera/widget/ImagePropertyItem$1;

    invoke-direct {v1, p0}, Lcom/android/camera/widget/ImagePropertyItem$1;-><init>(Lcom/android/camera/widget/ImagePropertyItem;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAddButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    iget-object v0, p0, Lcom/android/camera/widget/ImagePropertyItem;->m_PlusBtn:Lcom/htc/widget/HtcAddButton;

    new-instance v1, Lcom/android/camera/widget/ImagePropertyItem$2;

    invoke-direct {v1, p0}, Lcom/android/camera/widget/ImagePropertyItem$2;-><init>(Lcom/android/camera/widget/ImagePropertyItem;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAddButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 102
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/widget/ImagePropertyItem;->m_Icon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/camera/widget/ImagePropertyItem;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0200b2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 103
    iget-object v0, p0, Lcom/android/camera/widget/ImagePropertyItem;->m_Title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/camera/widget/ImagePropertyItem;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a00f2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v0, v8, Lcom/android/camera/CameraSettings;->contrast:Lcom/android/camera/property/Property;

    iput-object v0, p0, Lcom/android/camera/widget/ImagePropertyItem;->mValueProperty:Lcom/android/camera/property/Property;

    goto/16 :goto_1

    .line 107
    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/widget/ImagePropertyItem;->m_Icon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/camera/widget/ImagePropertyItem;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0200b4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 108
    iget-object v0, p0, Lcom/android/camera/widget/ImagePropertyItem;->m_Title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/camera/widget/ImagePropertyItem;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a00f3

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v0, v8, Lcom/android/camera/CameraSettings;->saturation:Lcom/android/camera/property/Property;

    iput-object v0, p0, Lcom/android/camera/widget/ImagePropertyItem;->mValueProperty:Lcom/android/camera/property/Property;

    goto/16 :goto_1

    .line 112
    :pswitch_3
    iget-object v0, p0, Lcom/android/camera/widget/ImagePropertyItem;->m_Icon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/camera/widget/ImagePropertyItem;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0200b5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 113
    iget-object v0, p0, Lcom/android/camera/widget/ImagePropertyItem;->m_Title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/camera/widget/ImagePropertyItem;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a00f4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v0, v8, Lcom/android/camera/CameraSettings;->sharpness:Lcom/android/camera/property/Property;

    iput-object v0, p0, Lcom/android/camera/widget/ImagePropertyItem;->mValueProperty:Lcom/android/camera/property/Property;

    goto/16 :goto_1

    .line 95
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final isDefaultLevel()Z
    .locals 2

    .prologue
    .line 310
    iget v0, p0, Lcom/android/camera/widget/ImagePropertyItem;->m_Level:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onLevelChanged()V
    .locals 2

    .prologue
    .line 207
    iget v0, p0, Lcom/android/camera/widget/ImagePropertyItem;->m_TypeValue:I

    packed-switch v0, :pswitch_data_0

    .line 221
    const-string v0, "ImagePropertyItem"

    const-string v1, "onLevelChanged - Unknown TypeValue!!"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    :goto_0
    iget-object v0, p0, Lcom/android/camera/widget/ImagePropertyItem;->m_Degree:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/camera/widget/ImagePropertyItem;->m_Level:I

    invoke-virtual {p0, v1}, Lcom/android/camera/widget/ImagePropertyItem;->getDegreeImage(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 227
    iget-object v0, p0, Lcom/android/camera/widget/ImagePropertyItem;->mOnLevelChangedListener:Lcom/android/camera/widget/ImagePropertyItem$OnLevelChangedListener;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/android/camera/widget/ImagePropertyItem;->mOnLevelChangedListener:Lcom/android/camera/widget/ImagePropertyItem$OnLevelChangedListener;

    iget v1, p0, Lcom/android/camera/widget/ImagePropertyItem;->m_Level:I

    invoke-interface {v0, p0, v1}, Lcom/android/camera/widget/ImagePropertyItem$OnLevelChangedListener;->onLevelChanged(Lcom/android/camera/widget/ImagePropertyItem;I)V

    .line 234
    :cond_0
    return-void

    .line 209
    :pswitch_0
    invoke-direct {p0}, Lcom/android/camera/widget/ImagePropertyItem;->setBrightnessValue()V

    goto :goto_0

    .line 212
    :pswitch_1
    invoke-direct {p0}, Lcom/android/camera/widget/ImagePropertyItem;->setContrastValue()V

    goto :goto_0

    .line 215
    :pswitch_2
    invoke-direct {p0}, Lcom/android/camera/widget/ImagePropertyItem;->setSaturationValue()V

    goto :goto_0

    .line 218
    :pswitch_3
    invoke-direct {p0}, Lcom/android/camera/widget/ImagePropertyItem;->setSharpnessValue()V

    goto :goto_0

    .line 207
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public resetDefaultLevel()V
    .locals 1

    .prologue
    .line 318
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/camera/widget/ImagePropertyItem;->m_Level:I

    .line 320
    invoke-virtual {p0}, Lcom/android/camera/widget/ImagePropertyItem;->onLevelChanged()V

    .line 321
    return-void
.end method

.method public final setOnButtonClickedListener(Lcom/android/camera/widget/ImagePropertyItem$OnButtonClickedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 298
    iput-object p1, p0, Lcom/android/camera/widget/ImagePropertyItem;->mOnButtonClickedListener:Lcom/android/camera/widget/ImagePropertyItem$OnButtonClickedListener;

    .line 299
    return-void
.end method

.method public final setOnLevelChangedListener(Lcom/android/camera/widget/ImagePropertyItem$OnLevelChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 302
    iput-object p1, p0, Lcom/android/camera/widget/ImagePropertyItem;->mOnLevelChangedListener:Lcom/android/camera/widget/ImagePropertyItem$OnLevelChangedListener;

    .line 303
    return-void
.end method

.method public updateLevel()I
    .locals 2

    .prologue
    .line 375
    iget-object v1, p0, Lcom/android/camera/widget/ImagePropertyItem;->mValueProperty:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/camera/widget/ImagePropertyItem;->mapToLevel(F)I

    move-result v0

    .line 379
    .local v0, level:I
    return v0
.end method
