.class Lcom/android/camera/effect/EffectPanelUI$4;
.super Ljava/lang/Object;
.source "EffectPanelUI.java"

# interfaces
.implements Lcom/android/camera/property/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/effect/EffectPanelUI;->initializeOverride()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/property/PropertyChangedCallback",
        "<",
        "Lcom/android/camera/UIState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/effect/EffectPanelUI;


# direct methods
.method constructor <init>(Lcom/android/camera/effect/EffectPanelUI;)V
    .locals 0
    .parameter

    .prologue
    .line 277
    iput-object p1, p0, Lcom/android/camera/effect/EffectPanelUI$4;->this$0:Lcom/android/camera/effect/EffectPanelUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/android/camera/property/Property;Lcom/android/camera/property/PropertyChangedEventArgs;)V
    .locals 10
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/property/Property",
            "<",
            "Lcom/android/camera/UIState;",
            ">;",
            "Lcom/android/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/android/camera/UIState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, property:Lcom/android/camera/property/Property;,"Lcom/android/camera/property/Property<Lcom/android/camera/UIState;>;"
    .local p2, e:Lcom/android/camera/property/PropertyChangedEventArgs;,"Lcom/android/camera/property/PropertyChangedEventArgs<Lcom/android/camera/UIState;>;"
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 280
    sget-object v7, Lcom/android/camera/effect/EffectPanelUI$18;->$SwitchMap$com$android$camera$UIState:[I

    iget-object v6, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v6, Lcom/android/camera/UIState;

    invoke-virtual {v6}, Lcom/android/camera/UIState;->ordinal()I

    move-result v6

    aget v6, v7, v6

    packed-switch v6, :pswitch_data_0

    .line 362
    :cond_0
    :goto_0
    return-void

    .line 285
    :pswitch_0
    iget-object v6, p0, Lcom/android/camera/effect/EffectPanelUI$4;->this$0:Lcom/android/camera/effect/EffectPanelUI;

    #calls: Lcom/android/camera/effect/EffectPanelUI;->getCameraMode()Lcom/android/camera/CameraMode;
    invoke-static {v6}, Lcom/android/camera/effect/EffectPanelUI;->access$200(Lcom/android/camera/effect/EffectPanelUI;)Lcom/android/camera/CameraMode;

    move-result-object v1

    .line 286
    .local v1, cameraMode:Lcom/android/camera/CameraMode;
    sget-object v6, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    if-ne v1, v6, :cond_2

    .line 288
    iget-object v6, p0, Lcom/android/camera/effect/EffectPanelUI$4;->this$0:Lcom/android/camera/effect/EffectPanelUI;

    #getter for: Lcom/android/camera/effect/EffectPanelUI;->m_HasPhotoEnhancer:Ljava/lang/Boolean;
    invoke-static {v6}, Lcom/android/camera/effect/EffectPanelUI;->access$300(Lcom/android/camera/effect/EffectPanelUI;)Ljava/lang/Boolean;

    move-result-object v6

    if-nez v6, :cond_1

    .line 290
    iget-object v6, p0, Lcom/android/camera/effect/EffectPanelUI$4;->this$0:Lcom/android/camera/effect/EffectPanelUI;

    invoke-virtual {v6}, Lcom/android/camera/effect/EffectPanelUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/HTCCamera;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 291
    .local v5, packageManager:Landroid/content/pm/PackageManager;
    new-instance v2, Landroid/content/ComponentName;

    const-string v6, "com.htc.photoenhancer"

    const-string v7, "com.htc.photoenhancer.PhotoEnhancer"

    invoke-direct {v2, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    .local v2, componentName:Landroid/content/ComponentName;
    const/16 v6, 0x80

    :try_start_0
    invoke-virtual {v5, v2, v6}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    .line 295
    iget-object v6, p0, Lcom/android/camera/effect/EffectPanelUI$4;->this$0:Lcom/android/camera/effect/EffectPanelUI;

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    #setter for: Lcom/android/camera/effect/EffectPanelUI;->m_HasPhotoEnhancer:Ljava/lang/Boolean;
    invoke-static {v6, v7}, Lcom/android/camera/effect/EffectPanelUI;->access$302(Lcom/android/camera/effect/EffectPanelUI;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 302
    .end local v2           #componentName:Landroid/content/ComponentName;
    .end local v5           #packageManager:Landroid/content/pm/PackageManager;
    :cond_1
    :goto_1
    iget-object v6, p0, Lcom/android/camera/effect/EffectPanelUI$4;->this$0:Lcom/android/camera/effect/EffectPanelUI;

    #getter for: Lcom/android/camera/effect/EffectPanelUI;->m_HasPhotoEnhancer:Ljava/lang/Boolean;
    invoke-static {v6}, Lcom/android/camera/effect/EffectPanelUI;->access$300(Lcom/android/camera/effect/EffectPanelUI;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_4

    .line 304
    iget-object v6, p0, Lcom/android/camera/effect/EffectPanelUI$4;->this$0:Lcom/android/camera/effect/EffectPanelUI;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/camera/effect/EffectPanelUI;->access$400(Lcom/android/camera/effect/EffectPanelUI;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "No photo enhancer on the system"

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 297
    .restart local v2       #componentName:Landroid/content/ComponentName;
    .restart local v5       #packageManager:Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v4

    .line 299
    .local v4, ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v6, p0, Lcom/android/camera/effect/EffectPanelUI$4;->this$0:Lcom/android/camera/effect/EffectPanelUI;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    #setter for: Lcom/android/camera/effect/EffectPanelUI;->m_HasPhotoEnhancer:Ljava/lang/Boolean;
    invoke-static {v6, v7}, Lcom/android/camera/effect/EffectPanelUI;->access$302(Lcom/android/camera/effect/EffectPanelUI;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    goto :goto_1

    .line 308
    .end local v2           #componentName:Landroid/content/ComponentName;
    .end local v4           #ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v5           #packageManager:Landroid/content/pm/PackageManager;
    :cond_2
    sget-object v6, Lcom/android/camera/CameraMode;->Video:Lcom/android/camera/CameraMode;

    if-ne v1, v6, :cond_4

    .line 310
    iget-object v6, p0, Lcom/android/camera/effect/EffectPanelUI$4;->this$0:Lcom/android/camera/effect/EffectPanelUI;

    #getter for: Lcom/android/camera/effect/EffectPanelUI;->m_HasVideoTrimmer:Ljava/lang/Boolean;
    invoke-static {v6}, Lcom/android/camera/effect/EffectPanelUI;->access$500(Lcom/android/camera/effect/EffectPanelUI;)Ljava/lang/Boolean;

    move-result-object v6

    if-nez v6, :cond_3

    .line 312
    iget-object v6, p0, Lcom/android/camera/effect/EffectPanelUI$4;->this$0:Lcom/android/camera/effect/EffectPanelUI;

    invoke-virtual {v6}, Lcom/android/camera/effect/EffectPanelUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/HTCCamera;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 313
    .restart local v5       #packageManager:Landroid/content/pm/PackageManager;
    new-instance v2, Landroid/content/ComponentName;

    const-string v6, "com.muvee.video.trimer"

    const-string v7, "com.muvee.video.trimer.MainActivity"

    invoke-direct {v2, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    .restart local v2       #componentName:Landroid/content/ComponentName;
    const/16 v6, 0x80

    :try_start_1
    invoke-virtual {v5, v2, v6}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    .line 317
    iget-object v6, p0, Lcom/android/camera/effect/EffectPanelUI$4;->this$0:Lcom/android/camera/effect/EffectPanelUI;

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    #setter for: Lcom/android/camera/effect/EffectPanelUI;->m_HasVideoTrimmer:Ljava/lang/Boolean;
    invoke-static {v6, v7}, Lcom/android/camera/effect/EffectPanelUI;->access$502(Lcom/android/camera/effect/EffectPanelUI;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 324
    .end local v2           #componentName:Landroid/content/ComponentName;
    .end local v5           #packageManager:Landroid/content/pm/PackageManager;
    :cond_3
    :goto_2
    iget-object v6, p0, Lcom/android/camera/effect/EffectPanelUI$4;->this$0:Lcom/android/camera/effect/EffectPanelUI;

    #getter for: Lcom/android/camera/effect/EffectPanelUI;->m_HasVideoTrimmer:Ljava/lang/Boolean;
    invoke-static {v6}, Lcom/android/camera/effect/EffectPanelUI;->access$500(Lcom/android/camera/effect/EffectPanelUI;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_4

    .line 326
    iget-object v6, p0, Lcom/android/camera/effect/EffectPanelUI$4;->this$0:Lcom/android/camera/effect/EffectPanelUI;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/camera/effect/EffectPanelUI;->access$600(Lcom/android/camera/effect/EffectPanelUI;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "No video trimmer on the system"

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 319
    .restart local v2       #componentName:Landroid/content/ComponentName;
    .restart local v5       #packageManager:Landroid/content/pm/PackageManager;
    :catch_1
    move-exception v4

    .line 321
    .restart local v4       #ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v6, p0, Lcom/android/camera/effect/EffectPanelUI$4;->this$0:Lcom/android/camera/effect/EffectPanelUI;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    #setter for: Lcom/android/camera/effect/EffectPanelUI;->m_HasVideoTrimmer:Ljava/lang/Boolean;
    invoke-static {v6, v7}, Lcom/android/camera/effect/EffectPanelUI;->access$502(Lcom/android/camera/effect/EffectPanelUI;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    goto :goto_2

    .line 332
    .end local v2           #componentName:Landroid/content/ComponentName;
    .end local v4           #ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v5           #packageManager:Landroid/content/pm/PackageManager;
    :cond_4
    iget-object v6, p0, Lcom/android/camera/effect/EffectPanelUI$4;->this$0:Lcom/android/camera/effect/EffectPanelUI;

    const-class v7, Lcom/android/camera/actionscreen/ActionScreen;

    #calls: Lcom/android/camera/effect/EffectPanelUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;
    invoke-static {v6, v7}, Lcom/android/camera/effect/EffectPanelUI;->access$700(Lcom/android/camera/effect/EffectPanelUI;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/actionscreen/ActionScreen;

    .line 333
    .local v0, actionScreen:Lcom/android/camera/actionscreen/ActionScreen;
    instance-of v6, v0, Lcom/android/camera/actionscreen/CommonActionScreen;

    if-eqz v6, :cond_0

    .line 335
    iget-object v6, p0, Lcom/android/camera/effect/EffectPanelUI$4;->this$0:Lcom/android/camera/effect/EffectPanelUI;

    check-cast v0, Lcom/android/camera/actionscreen/CommonActionScreen;

    .end local v0           #actionScreen:Lcom/android/camera/actionscreen/ActionScreen;
    #setter for: Lcom/android/camera/effect/EffectPanelUI;->m_ActionScreen:Lcom/android/camera/actionscreen/CommonActionScreen;
    invoke-static {v6, v0}, Lcom/android/camera/effect/EffectPanelUI;->access$802(Lcom/android/camera/effect/EffectPanelUI;Lcom/android/camera/actionscreen/CommonActionScreen;)Lcom/android/camera/actionscreen/CommonActionScreen;

    .line 338
    iget-object v6, p0, Lcom/android/camera/effect/EffectPanelUI$4;->this$0:Lcom/android/camera/effect/EffectPanelUI;

    #calls: Lcom/android/camera/effect/EffectPanelUI;->updateEffectButtonAvailability()V
    invoke-static {v6}, Lcom/android/camera/effect/EffectPanelUI;->access$900(Lcom/android/camera/effect/EffectPanelUI;)V

    .line 341
    iget-object v6, p0, Lcom/android/camera/effect/EffectPanelUI$4;->this$0:Lcom/android/camera/effect/EffectPanelUI;

    const-class v7, Lcom/android/camera/effect/IEffectManager;

    #calls: Lcom/android/camera/effect/EffectPanelUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;
    invoke-static {v6, v7}, Lcom/android/camera/effect/EffectPanelUI;->access$1000(Lcom/android/camera/effect/EffectPanelUI;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/effect/IEffectManager;

    .line 342
    .local v3, effectManager:Lcom/android/camera/effect/IEffectManager;
    if-eqz v3, :cond_5

    iget-object v6, v3, Lcom/android/camera/effect/IEffectManager;->currentScene:Lcom/android/camera/property/Property;

    invoke-virtual {v6}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lcom/android/camera/effect/BurstScene;

    if-nez v6, :cond_5

    .line 343
    iget-object v6, p0, Lcom/android/camera/effect/EffectPanelUI$4;->this$0:Lcom/android/camera/effect/EffectPanelUI;

    iget-object v7, p0, Lcom/android/camera/effect/EffectPanelUI$4;->this$0:Lcom/android/camera/effect/EffectPanelUI;

    #getter for: Lcom/android/camera/effect/EffectPanelUI;->m_EffectButton:Landroid/view/View;
    invoke-static {v7}, Lcom/android/camera/effect/EffectPanelUI;->access$1100(Lcom/android/camera/effect/EffectPanelUI;)Landroid/view/View;

    move-result-object v7

    #calls: Lcom/android/camera/effect/EffectPanelUI;->showUI(Landroid/view/View;ZZ)V
    invoke-static {v6, v7, v8, v8}, Lcom/android/camera/effect/EffectPanelUI;->access$1200(Lcom/android/camera/effect/EffectPanelUI;Landroid/view/View;ZZ)V

    .line 346
    :cond_5
    iget-object v6, p0, Lcom/android/camera/effect/EffectPanelUI$4;->this$0:Lcom/android/camera/effect/EffectPanelUI;

    #calls: Lcom/android/camera/effect/EffectPanelUI;->updateEffectButtonContent()V
    invoke-static {v6}, Lcom/android/camera/effect/EffectPanelUI;->access$1300(Lcom/android/camera/effect/EffectPanelUI;)V

    goto/16 :goto_0

    .line 352
    .end local v1           #cameraMode:Lcom/android/camera/CameraMode;
    .end local v3           #effectManager:Lcom/android/camera/effect/IEffectManager;
    :pswitch_1
    iget-object v6, p0, Lcom/android/camera/effect/EffectPanelUI$4;->this$0:Lcom/android/camera/effect/EffectPanelUI;

    const/4 v7, 0x0

    #setter for: Lcom/android/camera/effect/EffectPanelUI;->m_ActionScreen:Lcom/android/camera/actionscreen/CommonActionScreen;
    invoke-static {v6, v7}, Lcom/android/camera/effect/EffectPanelUI;->access$802(Lcom/android/camera/effect/EffectPanelUI;Lcom/android/camera/actionscreen/CommonActionScreen;)Lcom/android/camera/actionscreen/CommonActionScreen;

    .line 355
    iget-object v6, p0, Lcom/android/camera/effect/EffectPanelUI$4;->this$0:Lcom/android/camera/effect/EffectPanelUI;

    #calls: Lcom/android/camera/effect/EffectPanelUI;->updateEffectButtonAvailability()V
    invoke-static {v6}, Lcom/android/camera/effect/EffectPanelUI;->access$900(Lcom/android/camera/effect/EffectPanelUI;)V

    .line 358
    iget-object v6, p0, Lcom/android/camera/effect/EffectPanelUI$4;->this$0:Lcom/android/camera/effect/EffectPanelUI;

    #calls: Lcom/android/camera/effect/EffectPanelUI;->updateEffectButtonContent()V
    invoke-static {v6}, Lcom/android/camera/effect/EffectPanelUI;->access$1300(Lcom/android/camera/effect/EffectPanelUI;)V

    goto/16 :goto_0

    .line 280
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
