.class Lcom/htc/music/AddAppShortcutActivity$AppShortcutAdapter;
.super Landroid/widget/BaseAdapter;
.source "AddAppShortcutActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/AddAppShortcutActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AppShortcutAdapter"
.end annotation


# instance fields
.field private mActivityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/htc/music/AddAppShortcutActivity;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/music/AddAppShortcutActivity;)V
    .locals 1
    .parameter "context"
    .parameter "currentactivity"

    .prologue
    .line 297
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 298
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/AddAppShortcutActivity$AppShortcutAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 299
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/music/AddAppShortcutActivity$AppShortcutAdapter;->mActivityRef:Ljava/lang/ref/WeakReference;

    .line 300
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 3

    .prologue
    .line 375
    iget-object v1, p0, Lcom/htc/music/AddAppShortcutActivity$AppShortcutAdapter;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/AddAppShortcutActivity;

    .line 376
    .local v0, tempActivity:Lcom/htc/music/AddAppShortcutActivity;
    if-eqz v0, :cond_0

    .line 377
    #getter for: Lcom/htc/music/AddAppShortcutActivity;->mAppList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/music/AddAppShortcutActivity;->access$000(Lcom/htc/music/AddAppShortcutActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 381
    :goto_0
    return v1

    .line 379
    :cond_0
    const-string v1, "[AddAppShortcutActivity]"

    const-string v2, "AppShortcutAdapter, getCount, tempActivity is null!"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 3
    .parameter "position"

    .prologue
    .line 386
    iget-object v1, p0, Lcom/htc/music/AddAppShortcutActivity$AppShortcutAdapter;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/AddAppShortcutActivity;

    .line 387
    .local v0, tempActivity:Lcom/htc/music/AddAppShortcutActivity;
    if-eqz v0, :cond_0

    .line 388
    #getter for: Lcom/htc/music/AddAppShortcutActivity;->mAppList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/music/AddAppShortcutActivity;->access$000(Lcom/htc/music/AddAppShortcutActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 392
    :goto_0
    return-object v1

    .line 390
    :cond_0
    const-string v1, "[AddAppShortcutActivity]"

    const-string v2, "AppShortcutAdapter, getItem, tempActivity is null!"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 397
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .parameter "position"

    .prologue
    .line 351
    iget-object v1, p0, Lcom/htc/music/AddAppShortcutActivity$AppShortcutAdapter;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/AddAppShortcutActivity;

    .line 352
    .local v0, tempActivity:Lcom/htc/music/AddAppShortcutActivity;
    #getter for: Lcom/htc/music/AddAppShortcutActivity;->mDefinedMusicTitleIndex:I
    invoke-static {v0}, Lcom/htc/music/AddAppShortcutActivity;->access$100(Lcom/htc/music/AddAppShortcutActivity;)I

    move-result v1

    if-eq p1, v1, :cond_0

    #getter for: Lcom/htc/music/AddAppShortcutActivity;->mOtherTitleIndex:I
    invoke-static {v0}, Lcom/htc/music/AddAppShortcutActivity;->access$200(Lcom/htc/music/AddAppShortcutActivity;)I

    move-result v1

    if-ne p1, v1, :cond_1

    .line 353
    :cond_0
    const/4 v1, 0x0

    .line 355
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v8, 0x0

    .line 304
    iget-object v6, p0, Lcom/htc/music/AddAppShortcutActivity$AppShortcutAdapter;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/music/AddAppShortcutActivity;

    .line 305
    .local v4, tempActivity:Lcom/htc/music/AddAppShortcutActivity;
    const/4 v2, 0x0

    .line 306
    .local v2, itemInfo:Lcom/htc/music/AddAppShortcutActivity$BaseItem;
    if-eqz v4, :cond_1

    .line 307
    if-ltz p1, :cond_0

    #getter for: Lcom/htc/music/AddAppShortcutActivity;->mAppList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/htc/music/AddAppShortcutActivity;->access$000(Lcom/htc/music/AddAppShortcutActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge p1, v6, :cond_0

    .line 308
    #getter for: Lcom/htc/music/AddAppShortcutActivity;->mAppList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/htc/music/AddAppShortcutActivity;->access$000(Lcom/htc/music/AddAppShortcutActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #itemInfo:Lcom/htc/music/AddAppShortcutActivity$BaseItem;
    check-cast v2, Lcom/htc/music/AddAppShortcutActivity$BaseItem;

    .line 314
    .restart local v2       #itemInfo:Lcom/htc/music/AddAppShortcutActivity$BaseItem;
    :cond_0
    :goto_0
    if-nez v2, :cond_2

    .line 315
    const-string v6, "[AddAppShortcutActivity]"

    const-string v7, "AppShortcutAdapter, getView, itemInfo is null!"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    .end local p2
    :goto_1
    return-object p2

    .line 311
    .restart local p2
    :cond_1
    const-string v6, "[AddAppShortcutActivity]"

    const-string v7, "AppShortcutAdapter, getView, tempActivity is null!"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 319
    :cond_2
    const/4 v5, 0x0

    .line 321
    .local v5, v:Landroid/view/View;
    #getter for: Lcom/htc/music/AddAppShortcutActivity;->mDefinedMusicTitleIndex:I
    invoke-static {v4}, Lcom/htc/music/AddAppShortcutActivity;->access$100(Lcom/htc/music/AddAppShortcutActivity;)I

    move-result v6

    if-eq p1, v6, :cond_3

    #getter for: Lcom/htc/music/AddAppShortcutActivity;->mOtherTitleIndex:I
    invoke-static {v4}, Lcom/htc/music/AddAppShortcutActivity;->access$200(Lcom/htc/music/AddAppShortcutActivity;)I

    move-result v6

    if-ne p1, v6, :cond_5

    .line 322
    :cond_3
    if-eqz p2, :cond_4

    .line 323
    move-object v5, p2

    .line 328
    :goto_2
    const v6, 0x7f07005e

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListItemSeparator;

    .line 329
    .local v3, separator:Lcom/htc/widget/HtcListItemSeparator;
    #calls: Lcom/htc/music/AddAppShortcutActivity$BaseItem;->getSeparatorName()Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/music/AddAppShortcutActivity$BaseItem;->access$300(Lcom/htc/music/AddAppShortcutActivity$BaseItem;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v8, v6}, Lcom/htc/widget/HtcListItemSeparator;->setText(ILjava/lang/CharSequence;)V

    .line 330
    invoke-virtual {v3, v8}, Lcom/htc/widget/HtcListItemSeparator;->setBackgroundStyle(I)V

    .end local v3           #separator:Lcom/htc/widget/HtcListItemSeparator;
    :goto_3
    move-object p2, v5

    .line 346
    goto :goto_1

    .line 325
    :cond_4
    iget-object v6, p0, Lcom/htc/music/AddAppShortcutActivity$AppShortcutAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f03002a

    invoke-virtual {v6, v7, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    goto :goto_2

    .line 332
    :cond_5
    if-eqz p2, :cond_6

    .line 333
    move-object v5, p2

    .line 338
    :goto_4
    const v6, 0x7f070004

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcListItemColorIcon;

    .line 339
    .local v0, appImage:Lcom/htc/widget/HtcListItemColorIcon;
    #calls: Lcom/htc/music/AddAppShortcutActivity$BaseItem;->getIcon()Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Lcom/htc/music/AddAppShortcutActivity$BaseItem;->access$400(Lcom/htc/music/AddAppShortcutActivity$BaseItem;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/htc/widget/HtcListItemColorIcon;->setColorIconImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 341
    const v6, 0x7f070005

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListItem2LineText;

    .line 342
    .local v1, appName:Lcom/htc/widget/HtcListItem2LineText;
    #calls: Lcom/htc/music/AddAppShortcutActivity$BaseItem;->getName()Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/music/AddAppShortcutActivity$BaseItem;->access$500(Lcom/htc/music/AddAppShortcutActivity$BaseItem;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 343
    const/16 v6, 0x8

    invoke-virtual {v1, v6}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    goto :goto_3

    .line 335
    .end local v0           #appImage:Lcom/htc/widget/HtcListItemColorIcon;
    .end local v1           #appName:Lcom/htc/widget/HtcListItem2LineText;
    :cond_6
    iget-object v6, p0, Lcom/htc/music/AddAppShortcutActivity$AppShortcutAdapter;->mInflater:Landroid/view/LayoutInflater;

    const/high16 v7, 0x7f03

    invoke-virtual {v6, v7, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    goto :goto_4
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 361
    const/4 v0, 0x2

    return v0
.end method

.method public isEnabled(I)Z
    .locals 2
    .parameter "position"

    .prologue
    .line 366
    iget-object v1, p0, Lcom/htc/music/AddAppShortcutActivity$AppShortcutAdapter;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/AddAppShortcutActivity;

    .line 367
    .local v0, tempActivity:Lcom/htc/music/AddAppShortcutActivity;
    #getter for: Lcom/htc/music/AddAppShortcutActivity;->mDefinedMusicTitleIndex:I
    invoke-static {v0}, Lcom/htc/music/AddAppShortcutActivity;->access$100(Lcom/htc/music/AddAppShortcutActivity;)I

    move-result v1

    if-eq p1, v1, :cond_0

    #getter for: Lcom/htc/music/AddAppShortcutActivity;->mOtherTitleIndex:I
    invoke-static {v0}, Lcom/htc/music/AddAppShortcutActivity;->access$200(Lcom/htc/music/AddAppShortcutActivity;)I

    move-result v1

    if-ne p1, v1, :cond_1

    .line 368
    :cond_0
    const/4 v1, 0x0

    .line 370
    :goto_0
    return v1

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/BaseAdapter;->isEnabled(I)Z

    move-result v1

    goto :goto_0
.end method
