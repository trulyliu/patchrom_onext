.class public final Lcom/android/camera/preferences/FlashModePreferenceBinder;
.super Lcom/android/camera/preferences/PreferenceBinder;
.source "FlashModePreferenceBinder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/preferences/PreferenceBinder",
        "<",
        "Lcom/android/camera/FlashMode;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/android/camera/ISettingsOwner;Ljava/lang/String;Lcom/android/camera/property/Property;Ljava/lang/Object;Lcom/android/camera/FlashMode;)V
    .locals 0
    .parameter "settingsOwner"
    .parameter "preferenceName"
    .parameter
    .parameter "propertyOwnerKey"
    .parameter "defaultPropertyValue"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/ISettingsOwner;",
            "Ljava/lang/String;",
            "Lcom/android/camera/property/Property",
            "<",
            "Lcom/android/camera/FlashMode;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/android/camera/FlashMode;",
            ")V"
        }
    .end annotation

    .prologue
    .line 14
    .local p3, property:Lcom/android/camera/property/Property;,"Lcom/android/camera/property/Property<Lcom/android/camera/FlashMode;>;"
    invoke-direct/range {p0 .. p5}, Lcom/android/camera/preferences/PreferenceBinder;-><init>(Lcom/android/camera/ISettingsOwner;Ljava/lang/String;Lcom/android/camera/property/Property;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 15
    return-void
.end method


# virtual methods
.method protected getPreferenceValue()Lcom/android/camera/FlashMode;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 23
    iget-object v1, p0, Lcom/android/camera/preferences/PreferenceBinder;->settingsOwner:Lcom/android/camera/ISettingsOwner;

    invoke-interface {v1}, Lcom/android/camera/ISettingsOwner;->getSettings()Lcom/android/camera/Settings;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/preferences/PreferenceBinder;->preferenceName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/camera/preferences/PreferenceBinder;->defaultPropertyValue:Ljava/lang/Object;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/preferences/PreferenceBinder;->defaultPropertyValue:Ljava/lang/Object;

    check-cast v1, Lcom/android/camera/FlashMode;

    invoke-virtual {v1}, Lcom/android/camera/FlashMode;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v3, v4, v1}, Lcom/android/camera/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 24
    .local v0, value:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/camera/FlashMode;->fromValue(Ljava/lang/String;)Lcom/android/camera/FlashMode;

    move-result-object v2

    :cond_0
    return-object v2

    .end local v0           #value:Ljava/lang/String;
    :cond_1
    move-object v1, v2

    .line 23
    goto :goto_0
.end method

.method protected bridge synthetic getPreferenceValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 7
    invoke-virtual {p0}, Lcom/android/camera/preferences/FlashModePreferenceBinder;->getPreferenceValue()Lcom/android/camera/FlashMode;

    move-result-object v0

    return-object v0
.end method

.method protected setPreferenceValue(Lcom/android/camera/FlashMode;)V
    .locals 3
    .parameter "value"

    .prologue
    .line 29
    if-eqz p1, :cond_0

    .line 30
    iget-object v0, p0, Lcom/android/camera/preferences/PreferenceBinder;->settingsOwner:Lcom/android/camera/ISettingsOwner;

    invoke-interface {v0}, Lcom/android/camera/ISettingsOwner;->getSettings()Lcom/android/camera/Settings;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/preferences/PreferenceBinder;->preferenceName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/camera/FlashMode;->value:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 33
    :goto_0
    return-void

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/android/camera/preferences/PreferenceBinder;->settingsOwner:Lcom/android/camera/ISettingsOwner;

    invoke-interface {v0}, Lcom/android/camera/ISettingsOwner;->getSettings()Lcom/android/camera/Settings;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/preferences/PreferenceBinder;->preferenceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/camera/Settings;->remove(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method protected bridge synthetic setPreferenceValue(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 7
    check-cast p1, Lcom/android/camera/FlashMode;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/camera/preferences/FlashModePreferenceBinder;->setPreferenceValue(Lcom/android/camera/FlashMode;)V

    return-void
.end method
