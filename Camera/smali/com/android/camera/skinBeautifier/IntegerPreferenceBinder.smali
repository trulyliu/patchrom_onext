.class public Lcom/android/camera/skinBeautifier/IntegerPreferenceBinder;
.super Lcom/android/camera/preferences/PreferenceBinder;
.source "IntegerPreferenceBinder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/preferences/PreferenceBinder",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/android/camera/ISettingsOwner;Ljava/lang/String;Lcom/android/camera/property/Property;Ljava/lang/Object;I)V
    .locals 6
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
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Object;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 14
    .local p3, property:Lcom/android/camera/property/Property;,"Lcom/android/camera/property/Property<Ljava/lang/Integer;>;"
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/preferences/PreferenceBinder;-><init>(Lcom/android/camera/ISettingsOwner;Ljava/lang/String;Lcom/android/camera/property/Property;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 15
    return-void
.end method


# virtual methods
.method protected getPreferenceValue()Ljava/lang/Integer;
    .locals 3

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/camera/preferences/PreferenceBinder;->settingsOwner:Lcom/android/camera/ISettingsOwner;

    invoke-interface {v0}, Lcom/android/camera/ISettingsOwner;->getSettings()Lcom/android/camera/Settings;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/preferences/PreferenceBinder;->preferenceName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/camera/preferences/PreferenceBinder;->defaultPreferenceValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/Settings;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic getPreferenceValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 7
    invoke-virtual {p0}, Lcom/android/camera/skinBeautifier/IntegerPreferenceBinder;->getPreferenceValue()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
