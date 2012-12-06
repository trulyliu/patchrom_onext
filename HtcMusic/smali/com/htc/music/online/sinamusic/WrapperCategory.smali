.class public Lcom/htc/music/online/sinamusic/WrapperCategory;
.super Ljava/lang/Object;
.source "WrapperCategory.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field private CategoryDetailId:I

.field private CategoryDetailImage:Ljava/lang/String;

.field private CategoryDetailName:Ljava/lang/String;

.field private CategoryDetailUrl:Ljava/lang/String;

.field private CategoryTitle:Ljava/lang/String;

.field private CategoryUrl:Ljava/lang/String;

.field private TestCategoryImage:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public getCategoryDetailId()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/htc/music/online/sinamusic/WrapperCategory;->CategoryDetailId:I

    return v0
.end method

.method public getCategoryDetailImage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperCategory;->CategoryDetailImage:Ljava/lang/String;

    return-object v0
.end method

.method public getCategoryDetailName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperCategory;->CategoryDetailName:Ljava/lang/String;

    return-object v0
.end method

.method public getCategoryDetailUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperCategory;->CategoryDetailUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getCategoryTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperCategory;->CategoryTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getCategoryurl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperCategory;->CategoryUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTestCategoryImage()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperCategory;->TestCategoryImage:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public setCategoryDetailId(I)V
    .locals 0
    .parameter "categoryDetailId"

    .prologue
    .line 53
    iput p1, p0, Lcom/htc/music/online/sinamusic/WrapperCategory;->CategoryDetailId:I

    .line 54
    return-void
.end method

.method public setCategoryDetailImage(Ljava/lang/String;)V
    .locals 0
    .parameter "categoryDetailImage"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/htc/music/online/sinamusic/WrapperCategory;->CategoryDetailImage:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setCategoryDetailName(Ljava/lang/String;)V
    .locals 0
    .parameter "categoryDetailName"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/htc/music/online/sinamusic/WrapperCategory;->CategoryDetailName:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setCategoryDetailUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "categoryDetailUrl"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/htc/music/online/sinamusic/WrapperCategory;->CategoryDetailUrl:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setCategoryTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "categoryTitle"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/htc/music/online/sinamusic/WrapperCategory;->CategoryTitle:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setCategoryurl(Ljava/lang/String;)V
    .locals 0
    .parameter "categoryurl"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/htc/music/online/sinamusic/WrapperCategory;->CategoryUrl:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setTestCategoryImage(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "categoryImage"

    .prologue
    .line 28
    iput-object p1, p0, Lcom/htc/music/online/sinamusic/WrapperCategory;->TestCategoryImage:Landroid/graphics/Bitmap;

    .line 29
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 89
    iget v0, p0, Lcom/htc/music/online/sinamusic/WrapperCategory;->CategoryDetailId:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperCategory;->CategoryTitle:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperCategory;->CategoryUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperCategory;->CategoryDetailImage:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperCategory;->CategoryDetailName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperCategory;->CategoryDetailUrl:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 93
    :cond_0
    invoke-static {}, Lcom/htc/music/online/sinamusic/MyLogger;->kLog()Lcom/htc/music/online/sinamusic/MyLogger;

    move-result-object v0

    const-string v1, "Some dest is null"

    invoke-virtual {v0, v1}, Lcom/htc/music/online/sinamusic/MyLogger;->e(Ljava/lang/Object;)V

    .line 103
    :goto_0
    return-void

    .line 97
    :cond_1
    iget v0, p0, Lcom/htc/music/online/sinamusic/WrapperCategory;->CategoryDetailId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperCategory;->CategoryTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperCategory;->CategoryUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperCategory;->CategoryDetailImage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperCategory;->CategoryDetailName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperCategory;->CategoryDetailUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0
.end method
