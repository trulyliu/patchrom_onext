.class final Lcom/android/camera/menu/ListPreferenceValueMenuItem;
.super Lcom/android/camera/menu/RadioButtonMenuItem;
.source "ListPreferenceValueMenuItem.java"


# instance fields
.field private final m_Owner:Lcom/android/camera/menu/ListPreferenceMenuItem;

.field private final m_Value:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/camera/menu/ListPreferenceMenuItem;Ljava/lang/String;)V
    .locals 0
    .parameter "owner"
    .parameter "value"

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/android/camera/menu/RadioButtonMenuItem;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/android/camera/menu/ListPreferenceValueMenuItem;->m_Owner:Lcom/android/camera/menu/ListPreferenceMenuItem;

    .line 17
    iput-object p2, p0, Lcom/android/camera/menu/ListPreferenceValueMenuItem;->m_Value:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method protected onClicked()Z
    .locals 2

    .prologue
    .line 26
    invoke-super {p0}, Lcom/android/camera/menu/RadioButtonMenuItem;->onClicked()Z

    .line 27
    iget-object v0, p0, Lcom/android/camera/menu/ListPreferenceValueMenuItem;->m_Owner:Lcom/android/camera/menu/ListPreferenceMenuItem;

    iget-object v1, p0, Lcom/android/camera/menu/ListPreferenceValueMenuItem;->m_Value:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/menu/ListPreferenceMenuItem;->onSubItemClicked(Lcom/android/camera/menu/MenuItem;Ljava/lang/String;)V

    .line 28
    const/4 v0, 0x0

    return v0
.end method
