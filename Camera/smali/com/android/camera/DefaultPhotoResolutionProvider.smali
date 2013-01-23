.class public Lcom/android/camera/DefaultPhotoResolutionProvider;
.super Ljava/lang/Object;
.source "DefaultPhotoResolutionProvider.java"

# interfaces
.implements Lcom/android/camera/IPhotoResolutionProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/DefaultPhotoResolutionProvider$1;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DefaultPhotoResolutionPrevider"

.field private static final m_DefaultResolutions:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Lcom/android/camera/CameraType;",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/Resolution;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final m_ResolutionSettingKeys:[Ljava/lang/String;


# instance fields
.field protected final cameraActivity:Lcom/android/camera/HTCCamera;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 21
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/android/camera/DefaultPhotoResolutionProvider;->m_DefaultResolutions:Ljava/util/Hashtable;

    .line 22
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "pref_capture_resolution_photo_main"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "pref_capture_resolution_photo_3D"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "pref_capture_resolution_photo_2nd"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/camera/DefaultPhotoResolutionProvider;->m_ResolutionSettingKeys:[Ljava/lang/String;

    .line 33
    invoke-static {}, Lcom/android/camera/DefaultPhotoResolutionProvider;->initializeDefaultResolutions()V

    .line 34
    return-void
.end method

.method public constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 1
    .parameter "cameraActivity"

    .prologue
    .line 40
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    if-nez p1, :cond_0

    .line 43
    const-string v0, "cameraActivity"

    invoke-static {v0}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 44
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 46
    :cond_0
    iput-object p1, p0, Lcom/android/camera/DefaultPhotoResolutionProvider;->cameraActivity:Lcom/android/camera/HTCCamera;

    .line 47
    return-void
.end method

.method private getResolutionFromSettings(Ljava/lang/String;)Lcom/android/camera/Resolution;
    .locals 3
    .parameter "key"

    .prologue
    const/4 v1, 0x0

    .line 159
    if-nez p1, :cond_1

    .line 162
    :cond_0
    :goto_0
    return-object v1

    .line 161
    :cond_1
    iget-object v2, p0, Lcom/android/camera/DefaultPhotoResolutionProvider;->cameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/camera/CameraSettings;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, resolutionKey:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/camera/Resolution;->getResolution(Ljava/lang/String;)Lcom/android/camera/Resolution;

    move-result-object v1

    goto :goto_0
.end method

.method private getResolutionList(Lcom/android/camera/CameraType;Z)Ljava/util/List;
    .locals 7
    .parameter "cameraType"
    .parameter "isWideRatio"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/CameraType;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/Resolution;",
            ">;"
        }
    .end annotation

    .prologue
    .line 175
    sget-object v4, Lcom/android/camera/DefaultPhotoResolutionProvider;->m_DefaultResolutions:Ljava/util/Hashtable;

    invoke-virtual {v4, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 176
    .local v0, allResolutions:Ljava/util/List;,"Ljava/util/List<Lcom/android/camera/Resolution;>;"
    sget-object v4, Lcom/android/camera/DefaultPhotoResolutionProvider$1;->$SwitchMap$com$android$camera$CameraType:[I

    invoke-virtual {p1}, Lcom/android/camera/CameraType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 206
    const-string v4, "DefaultPhotoResolutionPrevider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getResolutionList() - Unknown camera type : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const/4 v2, 0x0

    :cond_0
    :goto_0
    return-object v2

    .line 180
    :pswitch_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 181
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/camera/Resolution;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/Resolution;

    .line 183
    .local v3, resolution:Lcom/android/camera/Resolution;
    invoke-virtual {v3}, Lcom/android/camera/Resolution;->isWideRatio()Z

    move-result v4

    if-ne v4, p2, :cond_1

    .line 184
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/camera/Resolution;>;"
    .end local v3           #resolution:Lcom/android/camera/Resolution;
    :pswitch_1
    move-object v2, v0

    .line 190
    goto :goto_0

    .line 193
    :pswitch_2
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportWideScreen2ndCamera()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 195
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 196
    .restart local v2       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/camera/Resolution;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/Resolution;

    .line 198
    .restart local v3       #resolution:Lcom/android/camera/Resolution;
    invoke-virtual {v3}, Lcom/android/camera/Resolution;->isWideRatio()Z

    move-result v4

    if-ne v4, p2, :cond_2

    .line 199
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/camera/Resolution;>;"
    .end local v3           #resolution:Lcom/android/camera/Resolution;
    :cond_3
    move-object v2, v0

    .line 203
    goto :goto_0

    .line 176
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static initializeDefault3mpResolutions(Ljava/util/ArrayList;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/Resolution;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 458
    .local p0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/camera/Resolution;>;"
    sget-object v0, Lcom/android/camera/Resolution;->THREE_MEGA:Lcom/android/camera/Resolution;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 459
    sget-object v0, Lcom/android/camera/Resolution;->SXGA:Lcom/android/camera/Resolution;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 460
    sget-object v0, Lcom/android/camera/Resolution;->VGA:Lcom/android/camera/Resolution;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 463
    sget-object v0, Lcom/android/camera/DefaultPhotoResolutionProvider$1;->$SwitchMap$com$android$camera$DisplayDevice$ScreenRatio:[I

    sget-object v1, Lcom/android/camera/DisplayDevice;->SCREEN_RATIO:Lcom/android/camera/DisplayDevice$ScreenRatio;

    invoke-virtual {v1}, Lcom/android/camera/DisplayDevice$ScreenRatio;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 476
    sget-object v0, Lcom/android/camera/Resolution;->THREE_MEGA_3_2:Lcom/android/camera/Resolution;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 477
    sget-object v0, Lcom/android/camera/Resolution;->SXGA_3_2:Lcom/android/camera/Resolution;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 478
    sget-object v0, Lcom/android/camera/Resolution;->VGA_3_2:Lcom/android/camera/Resolution;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 481
    :goto_0
    return-void

    .line 466
    :pswitch_0
    sget-object v0, Lcom/android/camera/Resolution;->THREE_MEGA_16_9:Lcom/android/camera/Resolution;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 467
    sget-object v0, Lcom/android/camera/Resolution;->SXGA_16_9:Lcom/android/camera/Resolution;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 468
    sget-object v0, Lcom/android/camera/Resolution;->VGA_16_9:Lcom/android/camera/Resolution;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 471
    :pswitch_1
    sget-object v0, Lcom/android/camera/Resolution;->THREE_MEGA_5_3:Lcom/android/camera/Resolution;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 472
    sget-object v0, Lcom/android/camera/Resolution;->SXGA_5_3:Lcom/android/camera/Resolution;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 473
    sget-object v0, Lcom/android/camera/Resolution;->VGA_5_3:Lcom/android/camera/Resolution;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 463
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static initializeDefault5mpResolutions(Ljava/util/ArrayList;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/Resolution;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 428
    .local p0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/camera/Resolution;>;"
    new-instance v0, Lcom/android/camera/Resolution;

    sget-object v1, Lcom/android/camera/Resolution;->PHOTO_4_3_2592x1936:Lcom/android/camera/Resolution;

    sget-object v2, Lcom/android/camera/Resolution$Category;->Large:Lcom/android/camera/Resolution$Category;

    invoke-direct {v0, v1, v2}, Lcom/android/camera/Resolution;-><init>(Lcom/android/camera/Resolution;Lcom/android/camera/Resolution$Category;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 430
    sget-object v0, Lcom/android/camera/DisplayDevice;->SCREEN_RATIO:Lcom/android/camera/DisplayDevice$ScreenRatio;

    sget-object v1, Lcom/android/camera/DisplayDevice$ScreenRatio;->Ratio_16_9:Lcom/android/camera/DisplayDevice$ScreenRatio;

    if-ne v0, v1, :cond_3

    .line 431
    new-instance v0, Lcom/android/camera/Resolution;

    sget-object v1, Lcom/android/camera/Resolution;->PHOTO_16_9_3264x1840:Lcom/android/camera/Resolution;

    sget-object v2, Lcom/android/camera/Resolution$Category;->Large:Lcom/android/camera/Resolution$Category;

    invoke-direct {v0, v1, v2}, Lcom/android/camera/Resolution;-><init>(Lcom/android/camera/Resolution;Lcom/android/camera/Resolution$Category;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 435
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportOVSensorResolution()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 436
    new-instance v0, Lcom/android/camera/Resolution;

    sget-object v1, Lcom/android/camera/Resolution;->PHOTO_4_3_2048x1536:Lcom/android/camera/Resolution;

    sget-object v2, Lcom/android/camera/Resolution$Category;->Medium:Lcom/android/camera/Resolution$Category;

    invoke-direct {v0, v1, v2}, Lcom/android/camera/Resolution;-><init>(Lcom/android/camera/Resolution;Lcom/android/camera/Resolution$Category;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 441
    :goto_1
    sget-object v0, Lcom/android/camera/DisplayDevice;->SCREEN_RATIO:Lcom/android/camera/DisplayDevice$ScreenRatio;

    sget-object v1, Lcom/android/camera/DisplayDevice$ScreenRatio;->Ratio_16_9:Lcom/android/camera/DisplayDevice$ScreenRatio;

    if-ne v0, v1, :cond_5

    .line 442
    new-instance v0, Lcom/android/camera/Resolution;

    sget-object v1, Lcom/android/camera/Resolution;->PHOTO_16_9_2048x1152:Lcom/android/camera/Resolution;

    sget-object v2, Lcom/android/camera/Resolution$Category;->Medium:Lcom/android/camera/Resolution$Category;

    invoke-direct {v0, v1, v2}, Lcom/android/camera/Resolution;-><init>(Lcom/android/camera/Resolution;Lcom/android/camera/Resolution$Category;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 446
    :cond_1
    :goto_2
    new-instance v0, Lcom/android/camera/Resolution;

    sget-object v1, Lcom/android/camera/Resolution;->PHOTO_4_3_1280x960:Lcom/android/camera/Resolution;

    sget-object v2, Lcom/android/camera/Resolution$Category;->Small:Lcom/android/camera/Resolution$Category;

    invoke-direct {v0, v1, v2}, Lcom/android/camera/Resolution;-><init>(Lcom/android/camera/Resolution;Lcom/android/camera/Resolution$Category;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 448
    sget-object v0, Lcom/android/camera/DisplayDevice;->SCREEN_RATIO:Lcom/android/camera/DisplayDevice$ScreenRatio;

    sget-object v1, Lcom/android/camera/DisplayDevice$ScreenRatio;->Ratio_16_9:Lcom/android/camera/DisplayDevice$ScreenRatio;

    if-ne v0, v1, :cond_6

    .line 449
    new-instance v0, Lcom/android/camera/Resolution;

    sget-object v1, Lcom/android/camera/Resolution;->PHOTO_16_9_1280x720:Lcom/android/camera/Resolution;

    sget-object v2, Lcom/android/camera/Resolution$Category;->Small:Lcom/android/camera/Resolution$Category;

    invoke-direct {v0, v1, v2}, Lcom/android/camera/Resolution;-><init>(Lcom/android/camera/Resolution;Lcom/android/camera/Resolution$Category;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 454
    :cond_2
    :goto_3
    return-void

    .line 432
    :cond_3
    sget-object v0, Lcom/android/camera/DisplayDevice;->SCREEN_RATIO:Lcom/android/camera/DisplayDevice$ScreenRatio;

    sget-object v1, Lcom/android/camera/DisplayDevice$ScreenRatio;->Ratio_5_3:Lcom/android/camera/DisplayDevice$ScreenRatio;

    if-ne v0, v1, :cond_0

    .line 433
    new-instance v0, Lcom/android/camera/Resolution;

    sget-object v1, Lcom/android/camera/Resolution;->PHOTO_5_3_2592x1552:Lcom/android/camera/Resolution;

    sget-object v2, Lcom/android/camera/Resolution$Category;->Large:Lcom/android/camera/Resolution$Category;

    invoke-direct {v0, v1, v2}, Lcom/android/camera/Resolution;-><init>(Lcom/android/camera/Resolution;Lcom/android/camera/Resolution$Category;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 439
    :cond_4
    new-instance v0, Lcom/android/camera/Resolution;

    sget-object v1, Lcom/android/camera/Resolution;->PHOTO_4_3_2048x1536:Lcom/android/camera/Resolution;

    sget-object v2, Lcom/android/camera/Resolution$Category;->Medium:Lcom/android/camera/Resolution$Category;

    invoke-direct {v0, v1, v2}, Lcom/android/camera/Resolution;-><init>(Lcom/android/camera/Resolution;Lcom/android/camera/Resolution$Category;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 443
    :cond_5
    sget-object v0, Lcom/android/camera/DisplayDevice;->SCREEN_RATIO:Lcom/android/camera/DisplayDevice$ScreenRatio;

    sget-object v1, Lcom/android/camera/DisplayDevice$ScreenRatio;->Ratio_5_3:Lcom/android/camera/DisplayDevice$ScreenRatio;

    if-ne v0, v1, :cond_1

    .line 444
    new-instance v0, Lcom/android/camera/Resolution;

    sget-object v1, Lcom/android/camera/Resolution;->PHOTO_5_3_2048x1216:Lcom/android/camera/Resolution;

    sget-object v2, Lcom/android/camera/Resolution$Category;->Medium:Lcom/android/camera/Resolution$Category;

    invoke-direct {v0, v1, v2}, Lcom/android/camera/Resolution;-><init>(Lcom/android/camera/Resolution;Lcom/android/camera/Resolution$Category;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 450
    :cond_6
    sget-object v0, Lcom/android/camera/DisplayDevice;->SCREEN_RATIO:Lcom/android/camera/DisplayDevice$ScreenRatio;

    sget-object v1, Lcom/android/camera/DisplayDevice$ScreenRatio;->Ratio_5_3:Lcom/android/camera/DisplayDevice$ScreenRatio;

    if-ne v0, v1, :cond_2

    .line 451
    new-instance v0, Lcom/android/camera/Resolution;

    sget-object v1, Lcom/android/camera/Resolution;->PHOTO_5_3_1280x768:Lcom/android/camera/Resolution;

    sget-object v2, Lcom/android/camera/Resolution$Category;->Small:Lcom/android/camera/Resolution$Category;

    invoke-direct {v0, v1, v2}, Lcom/android/camera/Resolution;-><init>(Lcom/android/camera/Resolution;Lcom/android/camera/Resolution$Category;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3
.end method

.method private static initializeDefault8mpResolutions(Ljava/util/ArrayList;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/Resolution;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 368
    .local p0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/camera/Resolution;>;"
    new-instance v0, Lcom/android/camera/Resolution;

    sget-object v1, Lcom/android/camera/Resolution;->PHOTO_4_3_3264x2448:Lcom/android/camera/Resolution;

    sget-object v2, Lcom/android/camera/Resolution$Category;->Large:Lcom/android/camera/Resolution$Category;

    invoke-direct {v0, v1, v2}, Lcom/android/camera/Resolution;-><init>(Lcom/android/camera/Resolution;Lcom/android/camera/Resolution$Category;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 370
    sget-object v0, Lcom/android/camera/DisplayDevice;->SCREEN_RATIO:Lcom/android/camera/DisplayDevice$ScreenRatio;

    sget-object v1, Lcom/android/camera/DisplayDevice$ScreenRatio;->Ratio_16_9:Lcom/android/camera/DisplayDevice$ScreenRatio;

    if-ne v0, v1, :cond_3

    .line 371
    new-instance v0, Lcom/android/camera/Resolution;

    sget-object v1, Lcom/android/camera/Resolution;->PHOTO_16_9_3264x1840:Lcom/android/camera/Resolution;

    sget-object v2, Lcom/android/camera/Resolution$Category;->Large:Lcom/android/camera/Resolution$Category;

    invoke-direct {v0, v1, v2}, Lcom/android/camera/Resolution;-><init>(Lcom/android/camera/Resolution;Lcom/android/camera/Resolution$Category;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 375
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportOVSensorResolution()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 376
    new-instance v0, Lcom/android/camera/Resolution;

    sget-object v1, Lcom/android/camera/Resolution;->PHOTO_4_3_2592x1936:Lcom/android/camera/Resolution;

    sget-object v2, Lcom/android/camera/Resolution$Category;->Medium:Lcom/android/camera/Resolution$Category;

    invoke-direct {v0, v1, v2}, Lcom/android/camera/Resolution;-><init>(Lcom/android/camera/Resolution;Lcom/android/camera/Resolution$Category;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 380
    :goto_1
    sget-object v0, Lcom/android/camera/DisplayDevice;->SCREEN_RATIO:Lcom/android/camera/DisplayDevice$ScreenRatio;

    sget-object v1, Lcom/android/camera/DisplayDevice$ScreenRatio;->Ratio_16_9:Lcom/android/camera/DisplayDevice$ScreenRatio;

    if-ne v0, v1, :cond_5

    .line 381
    new-instance v0, Lcom/android/camera/Resolution;

    sget-object v1, Lcom/android/camera/Resolution;->PHOTO_16_9_2592x1456:Lcom/android/camera/Resolution;

    sget-object v2, Lcom/android/camera/Resolution$Category;->Medium:Lcom/android/camera/Resolution$Category;

    invoke-direct {v0, v1, v2}, Lcom/android/camera/Resolution;-><init>(Lcom/android/camera/Resolution;Lcom/android/camera/Resolution$Category;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 385
    :cond_1
    :goto_2
    new-instance v0, Lcom/android/camera/Resolution;

    sget-object v1, Lcom/android/camera/Resolution;->PHOTO_4_3_2048x1536:Lcom/android/camera/Resolution;

    sget-object v2, Lcom/android/camera/Resolution$Category;->Small:Lcom/android/camera/Resolution$Category;

    invoke-direct {v0, v1, v2}, Lcom/android/camera/Resolution;-><init>(Lcom/android/camera/Resolution;Lcom/android/camera/Resolution$Category;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 387
    sget-object v0, Lcom/android/camera/DisplayDevice;->SCREEN_RATIO:Lcom/android/camera/DisplayDevice$ScreenRatio;

    sget-object v1, Lcom/android/camera/DisplayDevice$ScreenRatio;->Ratio_16_9:Lcom/android/camera/DisplayDevice$ScreenRatio;

    if-ne v0, v1, :cond_6

    .line 388
    new-instance v0, Lcom/android/camera/Resolution;

    sget-object v1, Lcom/android/camera/Resolution;->PHOTO_16_9_2048x1152:Lcom/android/camera/Resolution;

    sget-object v2, Lcom/android/camera/Resolution$Category;->Small:Lcom/android/camera/Resolution$Category;

    invoke-direct {v0, v1, v2}, Lcom/android/camera/Resolution;-><init>(Lcom/android/camera/Resolution;Lcom/android/camera/Resolution$Category;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 391
    :cond_2
    :goto_3
    return-void

    .line 372
    :cond_3
    sget-object v0, Lcom/android/camera/DisplayDevice;->SCREEN_RATIO:Lcom/android/camera/DisplayDevice$ScreenRatio;

    sget-object v1, Lcom/android/camera/DisplayDevice$ScreenRatio;->Ratio_5_3:Lcom/android/camera/DisplayDevice$ScreenRatio;

    if-ne v0, v1, :cond_0

    .line 373
    new-instance v0, Lcom/android/camera/Resolution;

    sget-object v1, Lcom/android/camera/Resolution;->PHOTO_5_3_3264x1952:Lcom/android/camera/Resolution;

    sget-object v2, Lcom/android/camera/Resolution$Category;->Large:Lcom/android/camera/Resolution$Category;

    invoke-direct {v0, v1, v2}, Lcom/android/camera/Resolution;-><init>(Lcom/android/camera/Resolution;Lcom/android/camera/Resolution$Category;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 378
    :cond_4
    new-instance v0, Lcom/android/camera/Resolution;

    sget-object v1, Lcom/android/camera/Resolution;->PHOTO_4_3_2592x1952:Lcom/android/camera/Resolution;

    sget-object v2, Lcom/android/camera/Resolution$Category;->Medium:Lcom/android/camera/Resolution$Category;

    invoke-direct {v0, v1, v2}, Lcom/android/camera/Resolution;-><init>(Lcom/android/camera/Resolution;Lcom/android/camera/Resolution$Category;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 382
    :cond_5
    sget-object v0, Lcom/android/camera/DisplayDevice;->SCREEN_RATIO:Lcom/android/camera/DisplayDevice$ScreenRatio;

    sget-object v1, Lcom/android/camera/DisplayDevice$ScreenRatio;->Ratio_5_3:Lcom/android/camera/DisplayDevice$ScreenRatio;

    if-ne v0, v1, :cond_1

    .line 383
    new-instance v0, Lcom/android/camera/Resolution;

    sget-object v1, Lcom/android/camera/Resolution;->PHOTO_5_3_2592x1552:Lcom/android/camera/Resolution;

    sget-object v2, Lcom/android/camera/Resolution$Category;->Medium:Lcom/android/camera/Resolution$Category;

    invoke-direct {v0, v1, v2}, Lcom/android/camera/Resolution;-><init>(Lcom/android/camera/Resolution;Lcom/android/camera/Resolution$Category;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 389
    :cond_6
    sget-object v0, Lcom/android/camera/DisplayDevice;->SCREEN_RATIO:Lcom/android/camera/DisplayDevice$ScreenRatio;

    sget-object v1, Lcom/android/camera/DisplayDevice$ScreenRatio;->Ratio_5_3:Lcom/android/camera/DisplayDevice$ScreenRatio;

    if-ne v0, v1, :cond_2

    .line 390
    new-instance v0, Lcom/android/camera/Resolution;

    sget-object v1, Lcom/android/camera/Resolution;->PHOTO_5_3_2048x1216:Lcom/android/camera/Resolution;

    sget-object v2, Lcom/android/camera/Resolution$Category;->Small:Lcom/android/camera/Resolution$Category;

    invoke-direct {v0, v1, v2}, Lcom/android/camera/Resolution;-><init>(Lcom/android/camera/Resolution;Lcom/android/camera/Resolution$Category;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3
.end method

.method private static initializeDefaultResolutions()V
    .locals 7

    .prologue
    const/16 v6, 0x43

    const/4 v5, 0x1

    .line 237
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 238
    .local v2, mainResolutions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/camera/Resolution;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 239
    .local v1, main3DResolutions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/camera/Resolution;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 240
    .local v0, frontResolutions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/camera/Resolution;>;"
    sget-object v3, Lcom/android/camera/DefaultPhotoResolutionProvider;->m_DefaultResolutions:Ljava/util/Hashtable;

    sget-object v4, Lcom/android/camera/CameraType;->Main:Lcom/android/camera/CameraType;

    invoke-virtual {v3, v4, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    sget-object v3, Lcom/android/camera/DefaultPhotoResolutionProvider;->m_DefaultResolutions:Ljava/util/Hashtable;

    sget-object v4, Lcom/android/camera/CameraType;->Main3D:Lcom/android/camera/CameraType;

    invoke-virtual {v3, v4, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    sget-object v3, Lcom/android/camera/DefaultPhotoResolutionProvider;->m_DefaultResolutions:Ljava/util/Hashtable;

    sget-object v4, Lcom/android/camera/CameraType;->Front:Lcom/android/camera/CameraType;

    invoke-virtual {v3, v4, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    invoke-static {}, Lcom/android/camera/DisplayDevice;->support3DCamera()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 246
    sget-object v3, Lcom/android/camera/Resolution;->Capture_1080P_3D:Lcom/android/camera/Resolution;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    :cond_0
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportSecondCamera()Z

    move-result v3

    if-ne v3, v5, :cond_1

    .line 250
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportSpecific2ndCamera()Z

    move-result v3

    if-ne v3, v5, :cond_2

    .line 330
    :cond_1
    :goto_0
    sget-object v3, Lcom/android/camera/DefaultPhotoResolutionProvider$1;->$SwitchMap$com$android$camera$HTCCameraSensor$Sensor_Type:[I

    invoke-static {}, Lcom/android/camera/HTCCameraSensor;->getType()Lcom/android/camera/HTCCameraSensor$Sensor_Type;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/HTCCameraSensor$Sensor_Type;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 339
    invoke-static {v2}, Lcom/android/camera/DefaultPhotoResolutionProvider;->initializeDefault3mpResolutions(Ljava/util/ArrayList;)V

    .line 342
    :goto_1
    return-void

    .line 272
    :cond_2
    invoke-static {}, Lcom/android/camera/DisplayDevice;->support2M2ndCam()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 273
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDlxSeries()Z

    move-result v3

    if-nez v3, :cond_3

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-ne v3, v6, :cond_7

    .line 275
    :cond_3
    new-instance v3, Lcom/android/camera/Resolution;

    sget-object v4, Lcom/android/camera/Resolution;->PHOTO_4_3_1440x1088:Lcom/android/camera/Resolution;

    sget-object v5, Lcom/android/camera/Resolution$Category;->Large:Lcom/android/camera/Resolution$Category;

    invoke-direct {v3, v4, v5}, Lcom/android/camera/Resolution;-><init>(Lcom/android/camera/Resolution;Lcom/android/camera/Resolution$Category;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 286
    :cond_4
    :goto_2
    new-instance v3, Lcom/android/camera/Resolution;

    sget-object v4, Lcom/android/camera/Resolution;->PHOTO_4_3_640x480:Lcom/android/camera/Resolution;

    sget-object v5, Lcom/android/camera/Resolution$Category;->Small:Lcom/android/camera/Resolution$Category;

    invoke-direct {v3, v4, v5}, Lcom/android/camera/Resolution;-><init>(Lcom/android/camera/Resolution;Lcom/android/camera/Resolution$Category;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportWideScreen2ndCamera()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 308
    sget-object v3, Lcom/android/camera/DisplayDevice;->SCREEN_RATIO:Lcom/android/camera/DisplayDevice$ScreenRatio;

    sget-object v4, Lcom/android/camera/DisplayDevice$ScreenRatio;->Ratio_16_9:Lcom/android/camera/DisplayDevice$ScreenRatio;

    if-ne v3, v4, :cond_6

    .line 309
    invoke-static {}, Lcom/android/camera/DisplayDevice;->support2M2ndCam()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 310
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDlxSeries()Z

    move-result v3

    if-nez v3, :cond_5

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-ne v3, v6, :cond_a

    .line 312
    :cond_5
    new-instance v3, Lcom/android/camera/Resolution;

    sget-object v4, Lcom/android/camera/Resolution;->PHOTO_16_9_1920x1088:Lcom/android/camera/Resolution;

    sget-object v5, Lcom/android/camera/Resolution$Category;->Large:Lcom/android/camera/Resolution$Category;

    invoke-direct {v3, v4, v5}, Lcom/android/camera/Resolution;-><init>(Lcom/android/camera/Resolution;Lcom/android/camera/Resolution$Category;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 323
    :cond_6
    :goto_3
    new-instance v3, Lcom/android/camera/Resolution;

    sget-object v4, Lcom/android/camera/Resolution;->PHOTO_16_9_640x368:Lcom/android/camera/Resolution;

    sget-object v5, Lcom/android/camera/Resolution$Category;->Small:Lcom/android/camera/Resolution$Category;

    invoke-direct {v3, v4, v5}, Lcom/android/camera/Resolution;-><init>(Lcom/android/camera/Resolution;Lcom/android/camera/Resolution$Category;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 277
    :cond_7
    new-instance v3, Lcom/android/camera/Resolution;

    sget-object v4, Lcom/android/camera/Resolution;->PHOTO_4_3_1600x1200:Lcom/android/camera/Resolution;

    sget-object v5, Lcom/android/camera/Resolution$Category;->Large:Lcom/android/camera/Resolution$Category;

    invoke-direct {v3, v4, v5}, Lcom/android/camera/Resolution;-><init>(Lcom/android/camera/Resolution;Lcom/android/camera/Resolution$Category;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 279
    :cond_8
    invoke-static {}, Lcom/android/camera/DisplayDevice;->support1_6M2ndCam()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 280
    new-instance v3, Lcom/android/camera/Resolution;

    sget-object v4, Lcom/android/camera/Resolution;->PHOTO_4_3_1456x1088:Lcom/android/camera/Resolution;

    sget-object v5, Lcom/android/camera/Resolution$Category;->Large:Lcom/android/camera/Resolution$Category;

    invoke-direct {v3, v4, v5}, Lcom/android/camera/Resolution;-><init>(Lcom/android/camera/Resolution;Lcom/android/camera/Resolution$Category;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 282
    :cond_9
    invoke-static {}, Lcom/android/camera/DisplayDevice;->support1M2ndCam()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 283
    new-instance v3, Lcom/android/camera/Resolution;

    sget-object v4, Lcom/android/camera/Resolution;->PHOTO_4_3_1280x960:Lcom/android/camera/Resolution;

    sget-object v5, Lcom/android/camera/Resolution$Category;->Large:Lcom/android/camera/Resolution$Category;

    invoke-direct {v3, v4, v5}, Lcom/android/camera/Resolution;-><init>(Lcom/android/camera/Resolution;Lcom/android/camera/Resolution$Category;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 314
    :cond_a
    new-instance v3, Lcom/android/camera/Resolution;

    sget-object v4, Lcom/android/camera/Resolution;->PHOTO_16_9_1600x896:Lcom/android/camera/Resolution;

    sget-object v5, Lcom/android/camera/Resolution$Category;->Large:Lcom/android/camera/Resolution$Category;

    invoke-direct {v3, v4, v5}, Lcom/android/camera/Resolution;-><init>(Lcom/android/camera/Resolution;Lcom/android/camera/Resolution$Category;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 316
    :cond_b
    invoke-static {}, Lcom/android/camera/DisplayDevice;->support1_6M2ndCam()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 317
    new-instance v3, Lcom/android/camera/Resolution;

    sget-object v4, Lcom/android/camera/Resolution;->PHOTO_16_9_1456x828:Lcom/android/camera/Resolution;

    sget-object v5, Lcom/android/camera/Resolution$Category;->Large:Lcom/android/camera/Resolution$Category;

    invoke-direct {v3, v4, v5}, Lcom/android/camera/Resolution;-><init>(Lcom/android/camera/Resolution;Lcom/android/camera/Resolution$Category;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 319
    :cond_c
    invoke-static {}, Lcom/android/camera/DisplayDevice;->support1M2ndCam()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 320
    new-instance v3, Lcom/android/camera/Resolution;

    sget-object v4, Lcom/android/camera/Resolution;->PHOTO_16_9_1280x720:Lcom/android/camera/Resolution;

    sget-object v5, Lcom/android/camera/Resolution$Category;->Large:Lcom/android/camera/Resolution$Category;

    invoke-direct {v3, v4, v5}, Lcom/android/camera/Resolution;-><init>(Lcom/android/camera/Resolution;Lcom/android/camera/Resolution$Category;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 333
    :pswitch_0
    invoke-static {v2}, Lcom/android/camera/DefaultPhotoResolutionProvider;->initializeDefault8mpResolutions(Ljava/util/ArrayList;)V

    goto/16 :goto_1

    .line 336
    :pswitch_1
    invoke-static {v2}, Lcom/android/camera/DefaultPhotoResolutionProvider;->initializeDefault5mpResolutions(Ljava/util/ArrayList;)V

    goto/16 :goto_1

    .line 330
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getContactPhotoResolution(Lcom/android/camera/CameraType;)Lcom/android/camera/Resolution;
    .locals 1
    .parameter "cameraType"

    .prologue
    .line 55
    sget-object v0, Lcom/android/camera/Resolution;->CONTACT_1_1_720x720:Lcom/android/camera/Resolution;

    return-object v0
.end method

.method public getPreviewSize(Lcom/android/camera/CameraType;Lcom/android/camera/Resolution;)Lcom/android/camera/imaging/Size;
    .locals 4
    .parameter "cameraType"
    .parameter "resolution"

    .prologue
    const/4 v0, 0x0

    .line 64
    if-nez p2, :cond_0

    .line 80
    :goto_0
    return-object v0

    .line 66
    :cond_0
    sget-object v1, Lcom/android/camera/DefaultPhotoResolutionProvider$1;->$SwitchMap$com$android$camera$CameraType:[I

    invoke-virtual {p1}, Lcom/android/camera/CameraType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 79
    const-string v1, "DefaultPhotoResolutionPrevider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPreviewSize() - Unknown camera type : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 69
    :pswitch_0
    invoke-virtual {p2}, Lcom/android/camera/Resolution;->isWideRatio()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    new-instance v0, Lcom/android/camera/imaging/Size;

    sget v1, Lcom/android/camera/DisplayDevice;->DEFALULT_CAMERA_PREVIEW_WITDH_FOR_3X:I

    sget v2, Lcom/android/camera/DisplayDevice;->DEFALULT_CAMERA_PREVIEW_HEIGHT_FOR_3X:I

    invoke-direct {v0, v1, v2}, Lcom/android/camera/imaging/Size;-><init>(II)V

    goto :goto_0

    .line 71
    :cond_1
    new-instance v0, Lcom/android/camera/imaging/Size;

    sget v1, Lcom/android/camera/DisplayDevice;->CAMERA_PREVIEW_WIDTH_FOR_4x3:I

    sget v2, Lcom/android/camera/DisplayDevice;->CAMERA_PREVIEW_HEIGHT_FOR_4x3:I

    invoke-direct {v0, v1, v2}, Lcom/android/camera/imaging/Size;-><init>(II)V

    goto :goto_0

    .line 73
    :pswitch_1
    new-instance v0, Lcom/android/camera/imaging/Size;

    sget v1, Lcom/android/camera/DisplayDevice;->DEFAULT_3D_CAMERA_PREVIEW_WIDTH:I

    sget v2, Lcom/android/camera/DisplayDevice;->DEFAULT_3D_CAMERA_PREVIEW_HEIGHT:I

    invoke-direct {v0, v1, v2}, Lcom/android/camera/imaging/Size;-><init>(II)V

    goto :goto_0

    .line 75
    :pswitch_2
    invoke-virtual {p2}, Lcom/android/camera/Resolution;->isWideRatio()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportWideScreen2ndCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 76
    new-instance v0, Lcom/android/camera/imaging/Size;

    sget v1, Lcom/android/camera/DisplayDevice;->DEFALULT_CAMERA_PREVIEW_WITDH_FOR_3X_2ND:I

    sget v2, Lcom/android/camera/DisplayDevice;->DEFALULT_CAMERA_PREVIEW_HEIGHT_FOR_3X_2ND:I

    invoke-direct {v0, v1, v2}, Lcom/android/camera/imaging/Size;-><init>(II)V

    goto :goto_0

    .line 77
    :cond_2
    new-instance v0, Lcom/android/camera/imaging/Size;

    sget v1, Lcom/android/camera/DisplayDevice;->CAMERA_PREVIEW_WIDTH_FOR_4x3:I

    sget v2, Lcom/android/camera/DisplayDevice;->CAMERA_PREVIEW_HEIGHT_FOR_4x3:I

    invoke-direct {v0, v1, v2}, Lcom/android/camera/imaging/Size;-><init>(II)V

    goto :goto_0

    .line 66
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getResolution(Lcom/android/camera/CameraType;Ljava/util/List;Lcom/android/camera/Resolution;)Lcom/android/camera/Resolution;
    .locals 9
    .parameter "cameraType"
    .parameter
    .parameter "currentResolution"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/CameraType;",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/Resolution;",
            ">;",
            "Lcom/android/camera/Resolution;",
            ")",
            "Lcom/android/camera/Resolution;"
        }
    .end annotation

    .prologue
    .local p2, resolutionList:Ljava/util/List;,"Ljava/util/List<Lcom/android/camera/Resolution;>;"
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 91
    if-nez p2, :cond_0

    .line 93
    const-string v7, "DefaultPhotoResolutionPrevider"

    const-string v8, "getResolution() - No resolution list specified"

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    :goto_0
    return-object v6

    .line 96
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_1

    .line 98
    const-string v7, "DefaultPhotoResolutionPrevider"

    const-string v8, "getResolution() - Empty resolution list"

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 103
    :cond_1
    if-nez p3, :cond_2

    .line 104
    invoke-virtual {p0, p1}, Lcom/android/camera/DefaultPhotoResolutionProvider;->getResolutionSettingsKey(Lcom/android/camera/CameraType;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/camera/DefaultPhotoResolutionProvider;->getResolutionFromSettings(Ljava/lang/String;)Lcom/android/camera/Resolution;

    move-result-object p3

    .line 107
    :cond_2
    if-eqz p3, :cond_4

    .line 109
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/Resolution;

    .line 111
    .local v4, resolution:Lcom/android/camera/Resolution;
    invoke-virtual {v4, p3}, Lcom/android/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    move-object v6, v4

    .line 112
    goto :goto_0

    .line 117
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v4           #resolution:Lcom/android/camera/Resolution;
    :cond_4
    sget-object v6, Lcom/android/camera/DefaultPhotoResolutionProvider$1;->$SwitchMap$com$android$camera$CameraType:[I

    invoke-virtual {p1}, Lcom/android/camera/CameraType;->ordinal()I

    move-result v8

    aget v6, v6, v8

    packed-switch v6, :pswitch_data_0

    .line 132
    :cond_5
    iget-object v6, p0, Lcom/android/camera/DefaultPhotoResolutionProvider;->cameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v6}, Lcom/android/camera/HTCCamera;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v6

    iget-object v6, v6, Lcom/android/camera/CameraSettings;->isWideRatioPhoto:Lcom/android/camera/property/Property;

    invoke-virtual {v6}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_7

    const/4 v2, 0x1

    .line 133
    .local v2, isWideRatio:Z
    :goto_1
    const/4 v5, -0x1

    .line 134
    .local v5, resolutionIndex:I
    invoke-direct {p0, p1, v2}, Lcom/android/camera/DefaultPhotoResolutionProvider;->getResolutionList(Lcom/android/camera/CameraType;Z)Ljava/util/List;

    move-result-object v3

    .line 135
    .local v3, oldResolutionList:Ljava/util/List;,"Ljava/util/List<Lcom/android/camera/Resolution;>;"
    if-eqz v3, :cond_6

    .line 137
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v0, v6, -0x1

    .local v0, i:I
    :goto_2
    if-ltz v0, :cond_6

    .line 139
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/Resolution;

    invoke-virtual {v6, p3}, Lcom/android/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 141
    move v5, v0

    .line 146
    .end local v0           #i:I
    :cond_6
    if-ltz v5, :cond_9

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_9

    .line 147
    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/Resolution;

    goto :goto_0

    .line 120
    .end local v2           #isWideRatio:Z
    .end local v3           #oldResolutionList:Ljava/util/List;,"Ljava/util/List<Lcom/android/camera/Resolution;>;"
    .end local v5           #resolutionIndex:I
    :pswitch_0
    const-string v6, "DefaultPhotoResolutionPrevider"

    const-string v8, "getResolution() - Resolution not found, use maximum resolution"

    invoke-static {v6, v8}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-interface {p2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/Resolution;

    goto/16 :goto_0

    .line 123
    :pswitch_1
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportWideScreen2ndCamera()Z

    move-result v6

    if-nez v6, :cond_5

    .line 125
    const-string v6, "DefaultPhotoResolutionPrevider"

    const-string v8, "getResolution() - Resolution not found, use maximum resolution"

    invoke-static {v6, v8}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-interface {p2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/Resolution;

    goto/16 :goto_0

    :cond_7
    move v2, v7

    .line 132
    goto :goto_1

    .line 137
    .restart local v0       #i:I
    .restart local v2       #isWideRatio:Z
    .restart local v3       #oldResolutionList:Ljava/util/List;,"Ljava/util/List<Lcom/android/camera/Resolution;>;"
    .restart local v5       #resolutionIndex:I
    :cond_8
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 150
    .end local v0           #i:I
    :cond_9
    const-string v6, "DefaultPhotoResolutionPrevider"

    const-string v8, "getResolution() - Resolution not found, use maximum resolution"

    invoke-static {v6, v8}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    invoke-interface {p2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/Resolution;

    goto/16 :goto_0

    .line 117
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getResolutionList(Lcom/android/camera/CameraType;)Ljava/util/List;
    .locals 1
    .parameter "cameraType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/CameraType;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/Resolution;",
            ">;"
        }
    .end annotation

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/camera/DefaultPhotoResolutionProvider;->cameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->isWideRatioPhoto:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/DefaultPhotoResolutionProvider;->getResolutionList(Lcom/android/camera/CameraType;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getResolutionSettingsKey(Lcom/android/camera/CameraType;)Ljava/lang/String;
    .locals 3
    .parameter "cameraType"

    .prologue
    .line 217
    sget-object v0, Lcom/android/camera/DefaultPhotoResolutionProvider$1;->$SwitchMap$com$android$camera$CameraType:[I

    invoke-virtual {p1}, Lcom/android/camera/CameraType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 226
    const-string v0, "DefaultPhotoResolutionPrevider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getResolutionSettingsKey() - Unknown camera type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 220
    :pswitch_0
    const-string v0, "pref_capture_resolution_photo_main"

    goto :goto_0

    .line 222
    :pswitch_1
    const-string v0, "pref_capture_resolution_photo_3D"

    goto :goto_0

    .line 224
    :pswitch_2
    const-string v0, "pref_capture_resolution_photo_2nd"

    goto :goto_0

    .line 217
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public resetResolutions()V
    .locals 2

    .prologue
    .line 489
    iget-object v0, p0, Lcom/android/camera/DefaultPhotoResolutionProvider;->cameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v0

    sget-object v1, Lcom/android/camera/DefaultPhotoResolutionProvider;->m_ResolutionSettingKeys:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraSettings;->remove([Ljava/lang/String;)V

    .line 490
    return-void
.end method
