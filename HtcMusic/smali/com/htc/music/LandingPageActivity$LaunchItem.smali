.class Lcom/htc/music/LandingPageActivity$LaunchItem;
.super Ljava/lang/Object;
.source "LandingPageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/LandingPageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LaunchItem"
.end annotation


# instance fields
.field mIcon:Landroid/graphics/drawable/Drawable;

.field mIconId:I

.field mIsDeletable:Z

.field mIsInnerItem:Z

.field mIsSoundHound:Z

.field mItemType:I

.field mLaunchIntent:Landroid/content/Intent;

.field private mLaunchItemClickListener:Landroid/view/View$OnClickListener;

.field private mLaunchItemLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mLaunchItemTouchListener:Landroid/view/View$OnTouchListener;

.field mName:Ljava/lang/String;

.field mPackageName:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/music/LandingPageActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/LandingPageActivity;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 170
    iput-object p1, p0, Lcom/htc/music/LandingPageActivity$LaunchItem;->this$0:Lcom/htc/music/LandingPageActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/LandingPageActivity$LaunchItem;->mIsDeletable:Z

    .line 105
    new-instance v0, Lcom/htc/music/LandingPageActivity$LaunchItem$1;

    invoke-direct {v0, p0}, Lcom/htc/music/LandingPageActivity$LaunchItem$1;-><init>(Lcom/htc/music/LandingPageActivity$LaunchItem;)V

    iput-object v0, p0, Lcom/htc/music/LandingPageActivity$LaunchItem;->mLaunchItemClickListener:Landroid/view/View$OnClickListener;

    .line 128
    new-instance v0, Lcom/htc/music/LandingPageActivity$LaunchItem$2;

    invoke-direct {v0, p0}, Lcom/htc/music/LandingPageActivity$LaunchItem$2;-><init>(Lcom/htc/music/LandingPageActivity$LaunchItem;)V

    iput-object v0, p0, Lcom/htc/music/LandingPageActivity$LaunchItem;->mLaunchItemLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 145
    new-instance v0, Lcom/htc/music/LandingPageActivity$LaunchItem$3;

    invoke-direct {v0, p0}, Lcom/htc/music/LandingPageActivity$LaunchItem$3;-><init>(Lcom/htc/music/LandingPageActivity$LaunchItem;)V

    iput-object v0, p0, Lcom/htc/music/LandingPageActivity$LaunchItem;->mLaunchItemTouchListener:Landroid/view/View$OnTouchListener;

    .line 171
    iput v2, p0, Lcom/htc/music/LandingPageActivity$LaunchItem;->mIconId:I

    .line 172
    iput-object v1, p0, Lcom/htc/music/LandingPageActivity$LaunchItem;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 173
    iput-object v1, p0, Lcom/htc/music/LandingPageActivity$LaunchItem;->mName:Ljava/lang/String;

    .line 174
    iput-object v1, p0, Lcom/htc/music/LandingPageActivity$LaunchItem;->mLaunchIntent:Landroid/content/Intent;

    .line 175
    iput-boolean v2, p0, Lcom/htc/music/LandingPageActivity$LaunchItem;->mIsInnerItem:Z

    .line 176
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/music/LandingPageActivity$LaunchItem;->mItemType:I

    .line 177
    iput-boolean v2, p0, Lcom/htc/music/LandingPageActivity$LaunchItem;->mIsSoundHound:Z

    .line 178
    iput-object v1, p0, Lcom/htc/music/LandingPageActivity$LaunchItem;->mPackageName:Ljava/lang/String;

    .line 179
    return-void
.end method

.method static synthetic access$1200(Lcom/htc/music/LandingPageActivity$LaunchItem;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/htc/music/LandingPageActivity$LaunchItem;->setLaunchIntent(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/htc/music/LandingPageActivity$LaunchItem;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/htc/music/LandingPageActivity$LaunchItem;->getLaunchIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/htc/music/LandingPageActivity$LaunchItem;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/htc/music/LandingPageActivity$LaunchItem;->getItemType()I

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/htc/music/LandingPageActivity$LaunchItem;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/htc/music/LandingPageActivity$LaunchItem;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2000(Lcom/htc/music/LandingPageActivity$LaunchItem;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/htc/music/LandingPageActivity$LaunchItem;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/htc/music/LandingPageActivity$LaunchItem;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/htc/music/LandingPageActivity$LaunchItem;->setName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/htc/music/LandingPageActivity$LaunchItem;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/htc/music/LandingPageActivity$LaunchItem;->setPackageName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/htc/music/LandingPageActivity$LaunchItem;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/htc/music/LandingPageActivity$LaunchItem;->setInnerItemEnable(Z)V

    return-void
.end method

.method static synthetic access$2400(Lcom/htc/music/LandingPageActivity$LaunchItem;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/htc/music/LandingPageActivity$LaunchItem;->setItemType(I)V

    return-void
.end method

.method static synthetic access$2500(Lcom/htc/music/LandingPageActivity$LaunchItem;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/htc/music/LandingPageActivity$LaunchItem;->setIcon(I)V

    return-void
.end method

.method static synthetic access$2600(Lcom/htc/music/LandingPageActivity$LaunchItem;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/htc/music/LandingPageActivity$LaunchItem;->setSoundHoundEnable(Z)V

    return-void
.end method

.method static synthetic access$2700(Lcom/htc/music/LandingPageActivity$LaunchItem;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/htc/music/LandingPageActivity$LaunchItem;->setIsDeletable(Z)V

    return-void
.end method

.method static synthetic access$2800(Lcom/htc/music/LandingPageActivity$LaunchItem;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/htc/music/LandingPageActivity$LaunchItem;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2900(Lcom/htc/music/LandingPageActivity$LaunchItem;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/htc/music/LandingPageActivity$LaunchItem;->getClickListener()Landroid/view/View$OnClickListener;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3000(Lcom/htc/music/LandingPageActivity$LaunchItem;)Landroid/view/View$OnLongClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/htc/music/LandingPageActivity$LaunchItem;->getLongClickListener()Landroid/view/View$OnLongClickListener;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3100(Lcom/htc/music/LandingPageActivity$LaunchItem;)Landroid/view/View$OnTouchListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/htc/music/LandingPageActivity$LaunchItem;->getOnTouchListener()Landroid/view/View$OnTouchListener;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3200(Lcom/htc/music/LandingPageActivity$LaunchItem;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/htc/music/LandingPageActivity$LaunchItem;->getIconId()I

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Lcom/htc/music/LandingPageActivity$LaunchItem;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/htc/music/LandingPageActivity$LaunchItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private getClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity$LaunchItem;->mLaunchItemClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method private getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity$LaunchItem;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private getIconId()I
    .locals 1

    .prologue
    .line 190
    iget v0, p0, Lcom/htc/music/LandingPageActivity$LaunchItem;->mIconId:I

    return v0
.end method

.method private getItemType()I
    .locals 1

    .prologue
    .line 250
    iget v0, p0, Lcom/htc/music/LandingPageActivity$LaunchItem;->mItemType:I

    return v0
.end method

.method private getLaunchIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity$LaunchItem;->mLaunchIntent:Landroid/content/Intent;

    return-object v0
.end method

.method private getLongClickListener()Landroid/view/View$OnLongClickListener;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity$LaunchItem;->mLaunchItemLongClickListener:Landroid/view/View$OnLongClickListener;

    return-object v0
.end method

.method private getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity$LaunchItem;->mName:Ljava/lang/String;

    return-object v0
.end method

.method private getOnTouchListener()Landroid/view/View$OnTouchListener;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity$LaunchItem;->mLaunchItemTouchListener:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method private getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity$LaunchItem;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method private isDeletable()Z
    .locals 1

    .prologue
    .line 274
    iget-boolean v0, p0, Lcom/htc/music/LandingPageActivity$LaunchItem;->mIsDeletable:Z

    return v0
.end method

.method private setIcon(I)V
    .locals 0
    .parameter "icon"

    .prologue
    .line 186
    iput p1, p0, Lcom/htc/music/LandingPageActivity$LaunchItem;->mIconId:I

    .line 187
    return-void
.end method

.method private setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "icon"

    .prologue
    .line 182
    iput-object p1, p0, Lcom/htc/music/LandingPageActivity$LaunchItem;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 183
    return-void
.end method

.method private setInnerItemEnable(Z)V
    .locals 0
    .parameter "isInnerItem"

    .prologue
    .line 238
    iput-boolean p1, p0, Lcom/htc/music/LandingPageActivity$LaunchItem;->mIsInnerItem:Z

    .line 239
    return-void
.end method

.method private setIsDeletable(Z)V
    .locals 0
    .parameter "isDeletable"

    .prologue
    .line 270
    iput-boolean p1, p0, Lcom/htc/music/LandingPageActivity$LaunchItem;->mIsDeletable:Z

    .line 271
    return-void
.end method

.method private setItemType(I)V
    .locals 0
    .parameter "itemType"

    .prologue
    .line 246
    iput p1, p0, Lcom/htc/music/LandingPageActivity$LaunchItem;->mItemType:I

    .line 247
    return-void
.end method

.method private setLaunchIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "launchIntent"

    .prologue
    .line 206
    iput-object p1, p0, Lcom/htc/music/LandingPageActivity$LaunchItem;->mLaunchIntent:Landroid/content/Intent;

    .line 207
    return-void
.end method

.method private setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 198
    iput-object p1, p0, Lcom/htc/music/LandingPageActivity$LaunchItem;->mName:Ljava/lang/String;

    .line 199
    return-void
.end method

.method private setPackageName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 262
    iput-object p1, p0, Lcom/htc/music/LandingPageActivity$LaunchItem;->mPackageName:Ljava/lang/String;

    .line 263
    return-void
.end method

.method private setSoundHoundEnable(Z)V
    .locals 0
    .parameter "isSoundHound"

    .prologue
    .line 254
    iput-boolean p1, p0, Lcom/htc/music/LandingPageActivity$LaunchItem;->mIsSoundHound:Z

    .line 255
    return-void
.end method
