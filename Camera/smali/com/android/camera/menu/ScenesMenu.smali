.class public Lcom/android/camera/menu/ScenesMenu;
.super Lcom/android/camera/menu/MenuListView;
.source "ScenesMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/menu/ScenesMenu$SubItem_UserScenes;,
        Lcom/android/camera/menu/ScenesMenu$UserScenesHeaderBarItem;,
        Lcom/android/camera/menu/ScenesMenu$SubItem;
    }
.end annotation


# static fields
.field public static final ITEM_ID_USER_SCENES_EXPAND_MENU_HEADER:I = 0x64

.field private static final TAG:Ljava/lang/String; = "ScenesMenu"


# instance fields
.field private m_CameraActivity:Lcom/android/camera/HTCCamera;

.field private m_Items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/menu/MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private m_Items_UserScenes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/menu/MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private m_Settings:Lcom/android/camera/Settings;

.field private m_UserScenesExpandMenuItem:Lcom/android/camera/menu/MenuItem;

.field private m_UserScenesHeaderBarItem:Lcom/android/camera/menu/ScenesMenu$UserScenesHeaderBarItem;

.field private m_lastSceneInSceneSelect:Lcom/android/camera/effect/EffectBase;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 185
    invoke-direct {p0, p1, p2}, Lcom/android/camera/menu/MenuListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/menu/ScenesMenu;->m_Items:Ljava/util/ArrayList;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/menu/ScenesMenu;->m_Items_UserScenes:Ljava/util/ArrayList;

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/menu/ScenesMenu;->m_lastSceneInSceneSelect:Lcom/android/camera/effect/EffectBase;

    .line 186
    instance-of v0, p1, Lcom/android/camera/HTCCamera;

    if-eqz v0, :cond_0

    .line 188
    check-cast p1, Lcom/android/camera/HTCCamera;

    .end local p1
    iput-object p1, p0, Lcom/android/camera/menu/ScenesMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    .line 189
    iget-object v0, p0, Lcom/android/camera/menu/ScenesMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/menu/ScenesMenu;->m_Settings:Lcom/android/camera/Settings;

    .line 193
    return-void

    .line 192
    .restart local p1
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method static synthetic access$000(Lcom/android/camera/effect/EffectBase;)[Ljava/lang/Integer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    invoke-static {p0}, Lcom/android/camera/menu/ScenesMenu;->getIconAndText(Lcom/android/camera/effect/EffectBase;)[Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/menu/ScenesMenu;)Lcom/android/camera/HTCCamera;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/camera/menu/ScenesMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/menu/ScenesMenu;)Lcom/android/camera/effect/EffectBase;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/camera/menu/ScenesMenu;->m_lastSceneInSceneSelect:Lcom/android/camera/effect/EffectBase;

    return-object v0
.end method

.method private static getIconAndText(Lcom/android/camera/effect/EffectBase;)[Ljava/lang/Integer;
    .locals 6
    .parameter "scene"

    .prologue
    const/4 v5, 0x0

    const v4, 0x7f0200a8

    const/4 v1, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 201
    instance-of v0, p0, Lcom/android/camera/effect/AutoScene;

    if-eqz v0, :cond_0

    .line 202
    new-array v0, v1, [Ljava/lang/Integer;

    const v1, 0x20800a2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const v1, 0x7f0a0220

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    .line 240
    :goto_0
    return-object v0

    .line 203
    :cond_0
    instance-of v0, p0, Lcom/android/camera/effect/SmartSceneDetectorScene;

    if-eqz v0, :cond_1

    .line 204
    new-array v0, v1, [Ljava/lang/Integer;

    const v1, 0x7f0200af

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const v1, 0x7f0a021f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    goto :goto_0

    .line 205
    :cond_1
    instance-of v0, p0, Lcom/android/camera/effect/PortraitScene;

    if-eqz v0, :cond_2

    .line 206
    new-array v0, v1, [Ljava/lang/Integer;

    const-string v1, "com.htc.R.drawable.icon_btn_people_dark"

    invoke-static {v1}, Lcom/android/camera/ViewUtil;->getHtcInternalResourceId(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const v1, 0x7f0a0221

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    goto :goto_0

    .line 207
    :cond_2
    instance-of v0, p0, Lcom/android/camera/effect/LandscapeScene;

    if-eqz v0, :cond_3

    .line 208
    new-array v0, v1, [Ljava/lang/Integer;

    const v1, 0x7f0200a9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const v1, 0x7f0a0222

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    goto :goto_0

    .line 209
    :cond_3
    instance-of v0, p0, Lcom/android/camera/effect/SmartShotScene;

    if-eqz v0, :cond_4

    .line 210
    new-array v0, v1, [Ljava/lang/Integer;

    const v1, 0x7f0200a7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const v1, 0x7f0a00bf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    goto :goto_0

    .line 211
    :cond_4
    instance-of v0, p0, Lcom/android/camera/effect/ActionScene;

    if-eqz v0, :cond_5

    .line 212
    new-array v0, v1, [Ljava/lang/Integer;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const v1, 0x7f0a0229

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    goto :goto_0

    .line 213
    :cond_5
    instance-of v0, p0, Lcom/android/camera/effect/BurstScene;

    if-eqz v0, :cond_6

    .line 214
    new-array v0, v1, [Ljava/lang/Integer;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const v1, 0x7f0a0224

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    goto/16 :goto_0

    .line 215
    :cond_6
    instance-of v0, p0, Lcom/android/camera/effect/ContinuousBurstScene;

    if-eqz v0, :cond_7

    .line 216
    new-array v0, v1, [Ljava/lang/Integer;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const v1, 0x7f0a0225

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    goto/16 :goto_0

    .line 217
    :cond_7
    instance-of v0, p0, Lcom/android/camera/effect/PanoramaScene;

    if-eqz v0, :cond_8

    .line 218
    new-array v0, v1, [Ljava/lang/Integer;

    const v1, 0x7f0200ad

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const v1, 0x7f0a00c6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    goto/16 :goto_0

    .line 219
    :cond_8
    instance-of v0, p0, Lcom/android/camera/effect/HdrScene;

    if-eqz v0, :cond_9

    .line 220
    new-array v0, v1, [Ljava/lang/Integer;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const v1, 0x7f0a00c7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    goto/16 :goto_0

    .line 221
    :cond_9
    instance-of v0, p0, Lcom/android/camera/effect/TextScene;

    if-eqz v0, :cond_a

    .line 222
    new-array v0, v1, [Ljava/lang/Integer;

    const v1, 0x7f0200b0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const v1, 0x7f0a0228

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    goto/16 :goto_0

    .line 225
    :cond_a
    instance-of v0, p0, Lcom/android/camera/effect/CloseUpScene;

    if-eqz v0, :cond_b

    .line 226
    new-array v0, v1, [Ljava/lang/Integer;

    const v1, 0x7f0200aa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const v1, 0x7f0a022a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    goto/16 :goto_0

    .line 227
    :cond_b
    instance-of v0, p0, Lcom/android/camera/effect/BacklightScene;

    if-eqz v0, :cond_c

    .line 228
    new-array v0, v1, [Ljava/lang/Integer;

    const v1, 0x7f0200a3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const v1, 0x7f0a022b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    goto/16 :goto_0

    .line 229
    :cond_c
    instance-of v0, p0, Lcom/android/camera/effect/LowlightScene;

    if-eqz v0, :cond_d

    .line 230
    new-array v0, v1, [Ljava/lang/Integer;

    const v1, 0x7f0200ab

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const v1, 0x7f0a0230

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    goto/16 :goto_0

    .line 232
    :cond_d
    instance-of v0, p0, Lcom/android/camera/sina/GifModeScene;

    if-eqz v0, :cond_e

    .line 233
    new-array v0, v1, [Ljava/lang/Integer;

    const v1, 0x7f0200a6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const v1, 0x7f0a0233

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    goto/16 :goto_0

    .line 240
    :cond_e
    new-array v0, v1, [Ljava/lang/Integer;

    aput-object v5, v0, v2

    aput-object v5, v0, v3

    goto/16 :goto_0
.end method

.method private updateCameraSceneItem()V
    .locals 23

    .prologue
    .line 260
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/menu/ScenesMenu;->m_Items:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 262
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/menu/ScenesMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->getStartMode()Lcom/android/camera/CameraStartMode;

    move-result-object v22

    .line 265
    .local v22, startMode:Lcom/android/camera/CameraStartMode;
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportFastFrameRecording()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 268
    new-instance v2, Lcom/android/camera/menu/SeparatorMenuItem;

    const v3, 0x7f0a00c9

    invoke-direct {v2, v3}, Lcom/android/camera/menu/SeparatorMenuItem;-><init>(I)V

    .line 269
    .local v2, menuItem:Lcom/android/camera/menu/MenuItem;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/menu/ScenesMenu;->m_Items:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    new-instance v2, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;

    .end local v2           #menuItem:Lcom/android/camera/menu/MenuItem;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/menu/ScenesMenu;->m_Settings:Lcom/android/camera/Settings;

    const-string v4, "pref_fast_fps"

    const v5, 0x7f0a00bd

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;-><init>(Lcom/android/camera/Settings;Ljava/lang/String;IIIZ)V

    .line 280
    .restart local v2       #menuItem:Lcom/android/camera/menu/MenuItem;
    const v3, 0x7f0200ae

    invoke-virtual {v2, v3}, Lcom/android/camera/menu/MenuItem;->setIcon(I)V

    .line 281
    const/16 v3, 0x2d

    invoke-virtual {v2, v3}, Lcom/android/camera/menu/MenuItem;->setId(I)V

    .line 283
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/menu/ScenesMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v3

    iget-object v3, v3, Lcom/android/camera/CameraSettings;->isSlowMotionEnabled:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;->setChecked(Z)V

    .line 284
    move-object/from16 v0, v22

    iget-boolean v3, v0, Lcom/android/camera/CameraStartMode;->supportsVideoMode:Z

    invoke-virtual {v2, v3}, Lcom/android/camera/menu/MenuItem;->setEnabled(Z)V

    .line 285
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/menu/ScenesMenu;->m_Items:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    new-instance v2, Lcom/android/camera/menu/SeparatorMenuItem;

    .end local v2           #menuItem:Lcom/android/camera/menu/MenuItem;
    const v3, 0x7f0a00c8

    invoke-direct {v2, v3}, Lcom/android/camera/menu/SeparatorMenuItem;-><init>(I)V

    .line 289
    .restart local v2       #menuItem:Lcom/android/camera/menu/MenuItem;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/menu/ScenesMenu;->m_Items:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 294
    .end local v2           #menuItem:Lcom/android/camera/menu/MenuItem;
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/menu/ScenesMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->getComponentManager()Lcom/android/camera/component/UIComponentManager;

    move-result-object v3

    const-class v4, Lcom/android/camera/effect/IEffectManager;

    invoke-virtual {v3, v4}, Lcom/android/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/camera/effect/IEffectManager;

    .line 295
    .local v11, effectManager:Lcom/android/camera/effect/IEffectManager;
    if-eqz v11, :cond_3

    .line 297
    iget-object v3, v11, Lcom/android/camera/effect/IEffectManager;->sceneList:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/List;

    .line 298
    .local v20, sceneList:Ljava/util/List;,"Ljava/util/List<Lcom/android/camera/effect/EffectBase;>;"
    if-nez v20, :cond_1

    .line 299
    new-instance v20, Ljava/util/ArrayList;

    .end local v20           #sceneList:Ljava/util/List;,"Ljava/util/List<Lcom/android/camera/effect/EffectBase;>;"
    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 305
    .restart local v20       #sceneList:Ljava/util/List;,"Ljava/util/List<Lcom/android/camera/effect/EffectBase;>;"
    :cond_1
    :goto_0
    new-instance v3, Lcom/android/camera/menu/ScenesMenu$UserScenesHeaderBarItem;

    const v4, 0x7f0a021d

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lcom/android/camera/menu/ScenesMenu$UserScenesHeaderBarItem;-><init>(Lcom/android/camera/menu/ScenesMenu;I)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/camera/menu/ScenesMenu;->m_UserScenesHeaderBarItem:Lcom/android/camera/menu/ScenesMenu$UserScenesHeaderBarItem;

    .line 306
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/menu/ScenesMenu;->m_Items:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/menu/ScenesMenu;->m_UserScenesHeaderBarItem:Lcom/android/camera/menu/ScenesMenu$UserScenesHeaderBarItem;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 307
    new-instance v3, Lcom/android/camera/menu/MenuItem;

    invoke-direct {v3}, Lcom/android/camera/menu/MenuItem;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/camera/menu/ScenesMenu;->m_UserScenesExpandMenuItem:Lcom/android/camera/menu/MenuItem;

    .line 308
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/menu/ScenesMenu;->m_UserScenesExpandMenuItem:Lcom/android/camera/menu/MenuItem;

    const/16 v4, 0x64

    invoke-virtual {v3, v4}, Lcom/android/camera/menu/MenuItem;->setId(I)V

    .line 309
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/menu/ScenesMenu;->m_UserScenesExpandMenuItem:Lcom/android/camera/menu/MenuItem;

    const v4, 0x7f0a021e

    invoke-virtual {v3, v4}, Lcom/android/camera/menu/MenuItem;->setTitle(I)V

    .line 310
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/menu/ScenesMenu;->m_Items:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/menu/ScenesMenu;->m_UserScenesExpandMenuItem:Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 316
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/menu/ScenesMenu;->m_Items_UserScenes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 319
    const/4 v13, 0x0

    .local v13, i:I
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v9

    .local v9, count:I
    :goto_1
    if-ge v13, v9, :cond_5

    .line 321
    move-object/from16 v0, v20

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/camera/effect/EffectBase;

    .line 323
    .local v19, scene:Lcom/android/camera/effect/EffectBase;
    move-object/from16 v0, v19

    instance-of v3, v0, Lcom/android/camera/effect/SmartSceneDetectorScene;

    if-nez v3, :cond_2

    move-object/from16 v0, v19

    instance-of v3, v0, Lcom/android/camera/effect/AutoScene;

    if-nez v3, :cond_2

    move-object/from16 v0, v19

    instance-of v3, v0, Lcom/android/camera/effect/PortraitScene;

    if-nez v3, :cond_2

    move-object/from16 v0, v19

    instance-of v3, v0, Lcom/android/camera/effect/LandscapeScene;

    if-nez v3, :cond_2

    move-object/from16 v0, v19

    instance-of v3, v0, Lcom/android/camera/effect/LowlightScene;

    if-nez v3, :cond_2

    move-object/from16 v0, v19

    instance-of v3, v0, Lcom/android/camera/effect/NightPortraitScene;

    if-nez v3, :cond_2

    move-object/from16 v0, v19

    instance-of v3, v0, Lcom/android/camera/effect/BacklightScene;

    if-nez v3, :cond_2

    move-object/from16 v0, v19

    instance-of v3, v0, Lcom/android/camera/effect/BacklightPortraitScene;

    if-nez v3, :cond_2

    move-object/from16 v0, v19

    instance-of v3, v0, Lcom/android/camera/effect/CloseUpScene;

    if-nez v3, :cond_2

    move-object/from16 v0, v19

    instance-of v3, v0, Lcom/android/camera/effect/SnowScene;

    if-nez v3, :cond_2

    move-object/from16 v0, v19

    instance-of v3, v0, Lcom/android/camera/effect/TextScene;

    if-eqz v3, :cond_4

    .line 337
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/menu/ScenesMenu;->m_Items_UserScenes:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/camera/menu/ScenesMenu$SubItem_UserScenes;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v4, v0, v1}, Lcom/android/camera/menu/ScenesMenu$SubItem_UserScenes;-><init>(Lcom/android/camera/menu/ScenesMenu;Lcom/android/camera/effect/EffectBase;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 319
    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 302
    .end local v9           #count:I
    .end local v13           #i:I
    .end local v19           #scene:Lcom/android/camera/effect/EffectBase;
    .end local v20           #sceneList:Ljava/util/List;,"Ljava/util/List<Lcom/android/camera/effect/EffectBase;>;"
    :cond_3
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .restart local v20       #sceneList:Ljava/util/List;,"Ljava/util/List<Lcom/android/camera/effect/EffectBase;>;"
    goto/16 :goto_0

    .line 341
    .restart local v9       #count:I
    .restart local v13       #i:I
    .restart local v19       #scene:Lcom/android/camera/effect/EffectBase;
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/menu/ScenesMenu;->m_Items:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/camera/menu/ScenesMenu$SubItem;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v4, v0, v1}, Lcom/android/camera/menu/ScenesMenu$SubItem;-><init>(Lcom/android/camera/menu/ScenesMenu;Lcom/android/camera/effect/EffectBase;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 343
    .end local v19           #scene:Lcom/android/camera/effect/EffectBase;
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/menu/ScenesMenu;->m_UserScenesExpandMenuItem:Lcom/android/camera/menu/MenuItem;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/menu/ScenesMenu;->m_Items_UserScenes:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Lcom/android/camera/menu/MenuItem;->setItems(Ljava/util/List;)V

    .line 346
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/menu/ScenesMenu;->m_Items:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/camera/menu/ScenesMenu;->setItems(Ljava/util/List;)V

    .line 349
    if-eqz v11, :cond_6

    iget-object v3, v11, Lcom/android/camera/effect/IEffectManager;->currentScene:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/effect/EffectBase;

    move-object v10, v3

    .line 350
    .local v10, currentScene:Lcom/android/camera/effect/EffectBase;
    :goto_3
    const/4 v15, 0x0

    .line 352
    .local v15, isSceneFound:Z
    const/16 v21, -0x1

    .line 357
    .local v21, selectedIndex:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/menu/ScenesMenu;->m_Items_UserScenes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v13, v3, -0x1

    :goto_4
    if-ltz v13, :cond_9

    .line 359
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/menu/ScenesMenu;->m_Items_UserScenes:Ljava/util/ArrayList;

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/android/camera/menu/ScenesMenu$SubItem_UserScenes;

    if-nez v3, :cond_7

    .line 357
    :goto_5
    add-int/lit8 v13, v13, -0x1

    goto :goto_4

    .line 349
    .end local v10           #currentScene:Lcom/android/camera/effect/EffectBase;
    .end local v15           #isSceneFound:Z
    .end local v21           #selectedIndex:I
    :cond_6
    const/4 v10, 0x0

    goto :goto_3

    .line 362
    .restart local v10       #currentScene:Lcom/android/camera/effect/EffectBase;
    .restart local v15       #isSceneFound:Z
    .restart local v21       #selectedIndex:I
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/menu/ScenesMenu;->m_Items_UserScenes:Ljava/util/ArrayList;

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/camera/menu/ScenesMenu$SubItem_UserScenes;

    .line 363
    .local v17, item_L2:Lcom/android/camera/menu/ScenesMenu$SubItem_UserScenes;
    #getter for: Lcom/android/camera/menu/ScenesMenu$SubItem_UserScenes;->scene:Lcom/android/camera/effect/EffectBase;
    invoke-static/range {v17 .. v17}, Lcom/android/camera/menu/ScenesMenu$SubItem_UserScenes;->access$300(Lcom/android/camera/menu/ScenesMenu$SubItem_UserScenes;)Lcom/android/camera/effect/EffectBase;

    move-result-object v3

    if-eq v3, v10, :cond_8

    .line 364
    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/android/camera/menu/ScenesMenu$SubItem_UserScenes;->setChecked(Z)V

    goto :goto_5

    .line 367
    :cond_8
    const/4 v15, 0x1

    .line 368
    const/4 v3, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/android/camera/menu/ScenesMenu$SubItem_UserScenes;->setChecked(Z)V

    .line 369
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/menu/ScenesMenu;->m_UserScenesHeaderBarItem:Lcom/android/camera/menu/ScenesMenu$UserScenesHeaderBarItem;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/camera/menu/ScenesMenu$UserScenesHeaderBarItem;->setChecked(Z)V

    .line 371
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/camera/menu/ScenesMenu;->m_lastSceneInSceneSelect:Lcom/android/camera/effect/EffectBase;

    goto :goto_5

    .line 377
    .end local v17           #item_L2:Lcom/android/camera/menu/ScenesMenu$SubItem_UserScenes;
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/menu/ScenesMenu;->m_lastSceneInSceneSelect:Lcom/android/camera/effect/EffectBase;

    if-eqz v3, :cond_c

    .line 379
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/menu/ScenesMenu;->m_lastSceneInSceneSelect:Lcom/android/camera/effect/EffectBase;

    invoke-static {v3}, Lcom/android/camera/menu/ScenesMenu;->getIconAndText(Lcom/android/camera/effect/EffectBase;)[Ljava/lang/Integer;

    move-result-object v14

    .line 380
    .local v14, iconAndText:[Ljava/lang/Integer;
    const/4 v3, 0x0

    aget-object v3, v14, v3

    if-eqz v3, :cond_a

    .line 382
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/menu/ScenesMenu;->m_UserScenesHeaderBarItem:Lcom/android/camera/menu/ScenesMenu$UserScenesHeaderBarItem;

    const/4 v4, 0x0

    aget-object v4, v14, v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/camera/menu/ScenesMenu$UserScenesHeaderBarItem;->setIcon(I)V

    .line 384
    :cond_a
    const/4 v3, 0x1

    aget-object v3, v14, v3

    if-eqz v3, :cond_b

    .line 386
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/menu/ScenesMenu;->m_UserScenesHeaderBarItem:Lcom/android/camera/menu/ScenesMenu$UserScenesHeaderBarItem;

    const/4 v4, 0x1

    aget-object v4, v14, v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/camera/menu/ScenesMenu$UserScenesHeaderBarItem;->setSummary(I)V

    .line 398
    .end local v14           #iconAndText:[Ljava/lang/Integer;
    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/menu/ScenesMenu;->m_Items:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v13, v3, -0x1

    :goto_7
    if-ltz v13, :cond_f

    .line 400
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/menu/ScenesMenu;->m_Items:Ljava/util/ArrayList;

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/android/camera/menu/ScenesMenu$SubItem;

    if-nez v3, :cond_d

    .line 398
    :goto_8
    add-int/lit8 v13, v13, -0x1

    goto :goto_7

    .line 389
    .restart local v14       #iconAndText:[Ljava/lang/Integer;
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/menu/ScenesMenu;->m_UserScenesHeaderBarItem:Lcom/android/camera/menu/ScenesMenu$UserScenesHeaderBarItem;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/menu/ScenesMenu;->m_lastSceneInSceneSelect:Lcom/android/camera/effect/EffectBase;

    invoke-virtual {v4}, Lcom/android/camera/effect/EffectBase;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/camera/menu/ScenesMenu$UserScenesHeaderBarItem;->setSummary(Ljava/lang/String;)V

    goto :goto_6

    .line 393
    .end local v14           #iconAndText:[Ljava/lang/Integer;
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/menu/ScenesMenu;->m_UserScenesHeaderBarItem:Lcom/android/camera/menu/ScenesMenu$UserScenesHeaderBarItem;

    const-string v4, "com.htc.R.drawable.icon_btn_auto_dark"

    invoke-static {v4}, Lcom/android/camera/ViewUtil;->getHtcInternalResourceId(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/camera/menu/ScenesMenu$UserScenesHeaderBarItem;->setIcon(I)V

    .line 394
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/menu/ScenesMenu;->m_UserScenesHeaderBarItem:Lcom/android/camera/menu/ScenesMenu$UserScenesHeaderBarItem;

    const-string v4, " "

    invoke-virtual {v3, v4}, Lcom/android/camera/menu/ScenesMenu$UserScenesHeaderBarItem;->setSummary(Ljava/lang/String;)V

    goto :goto_6

    .line 403
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/menu/ScenesMenu;->m_Items:Ljava/util/ArrayList;

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/camera/menu/ScenesMenu$SubItem;

    .line 404
    .local v16, item:Lcom/android/camera/menu/ScenesMenu$SubItem;
    #getter for: Lcom/android/camera/menu/ScenesMenu$SubItem;->scene:Lcom/android/camera/effect/EffectBase;
    invoke-static/range {v16 .. v16}, Lcom/android/camera/menu/ScenesMenu$SubItem;->access$400(Lcom/android/camera/menu/ScenesMenu$SubItem;)Lcom/android/camera/effect/EffectBase;

    move-result-object v3

    if-eq v3, v10, :cond_e

    .line 405
    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/android/camera/menu/ScenesMenu$SubItem;->setChecked(Z)V

    goto :goto_8

    .line 408
    :cond_e
    move/from16 v21, v13

    .line 409
    const/4 v15, 0x1

    .line 410
    const/4 v3, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/android/camera/menu/ScenesMenu$SubItem;->setChecked(Z)V

    goto :goto_8

    .line 415
    .end local v16           #item:Lcom/android/camera/menu/ScenesMenu$SubItem;
    :cond_f
    if-nez v15, :cond_10

    .line 418
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/menu/ScenesMenu;->m_Items_UserScenes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_10

    .line 420
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/menu/ScenesMenu;->m_Items_UserScenes:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/menu/ScenesMenu$SubItem_UserScenes;

    #getter for: Lcom/android/camera/menu/ScenesMenu$SubItem_UserScenes;->scene:Lcom/android/camera/effect/EffectBase;
    invoke-static {v3}, Lcom/android/camera/menu/ScenesMenu$SubItem_UserScenes;->access$300(Lcom/android/camera/menu/ScenesMenu$SubItem_UserScenes;)Lcom/android/camera/effect/EffectBase;

    move-result-object v10

    .line 421
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/menu/ScenesMenu;->m_Items_UserScenes:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/menu/MenuItem;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/camera/menu/MenuItem;->setChecked(Z)V

    .line 426
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/menu/ScenesMenu;->getFirstVisiblePosition()I

    move-result v12

    .line 427
    .local v12, firstVisibleIndex:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/menu/ScenesMenu;->getLastVisiblePosition()I

    move-result v18

    .line 428
    .local v18, lastVisibleIndex:I
    if-ltz v21, :cond_12

    sub-int v3, v18, v12

    const/4 v4, 0x1

    if-le v3, v4, :cond_12

    move/from16 v0, v21

    if-le v0, v12, :cond_11

    move/from16 v0, v21

    move/from16 v1, v18

    if-lt v0, v1, :cond_12

    .line 429
    :cond_11
    const/4 v3, 0x0

    add-int/lit8 v4, v21, -0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/camera/menu/ScenesMenu;->setSelection(I)V

    .line 430
    :cond_12
    return-void
.end method


# virtual methods
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 452
    const/16 v0, 0xe3

    if-ne p1, v0, :cond_0

    .line 454
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    .line 455
    const/4 v0, 0x1

    .line 457
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/camera/menu/MenuListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 473
    const/16 v0, 0xe3

    if-ne p1, v0, :cond_0

    .line 474
    const-string v0, "ScenesMenu"

    const-string v1, "SettingMenu_onKeyLongPress:"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    iget-object v0, p0, Lcom/android/camera/menu/ScenesMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->shareKeyForScenesMenuEvent:Lcom/android/camera/event/Event;

    sget-object v1, Lcom/android/camera/event/EventArgs;->empty:Lcom/android/camera/event/EventArgs;

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 476
    iget-object v0, p0, Lcom/android/camera/menu/ScenesMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/HTCCamera;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    .line 477
    const/4 v0, 0x0

    .line 479
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/camera/menu/MenuListView;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 462
    const/16 v0, 0xe3

    if-ne p1, v0, :cond_0

    .line 463
    const-string v0, "ScenesMenu"

    const-string v1, "SettingMenu_onKeyUp:"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    iget-object v0, p0, Lcom/android/camera/menu/ScenesMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->shareKeyForScenesMenuEvent:Lcom/android/camera/event/Event;

    sget-object v1, Lcom/android/camera/event/EventArgs;->empty:Lcom/android/camera/event/EventArgs;

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 465
    iget-object v0, p0, Lcom/android/camera/menu/ScenesMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->triggerShortPressShareKey()V

    .line 466
    const/4 v0, 0x1

    .line 468
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/camera/menu/MenuListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onMenuItemClicked(Lcom/android/camera/menu/MenuItem;II)V
    .locals 0
    .parameter "item"
    .parameter "index"
    .parameter "id"

    .prologue
    .line 250
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/menu/MenuListView;->onMenuItemClicked(Lcom/android/camera/menu/MenuItem;II)V

    .line 251
    return-void
.end method

.method public updateItemContents()V
    .locals 0

    .prologue
    .line 439
    invoke-virtual {p0}, Lcom/android/camera/menu/ScenesMenu;->beginUpdate()V

    .line 442
    invoke-direct {p0}, Lcom/android/camera/menu/ScenesMenu;->updateCameraSceneItem()V

    .line 443
    invoke-super {p0}, Lcom/android/camera/menu/MenuListView;->updateItemContents()V

    .line 446
    invoke-virtual {p0}, Lcom/android/camera/menu/ScenesMenu;->endUpdate()V

    .line 447
    return-void
.end method
