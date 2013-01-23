.class Lcom/android/camera/menu/MenuAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "MenuAdapter.java"


# instance fields
.field private final m_Context:Landroid/content/Context;

.field private final m_CustomMenuItemTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/android/camera/menu/MenuItem;",
            ">;>;"
        }
    .end annotation
.end field

.field private final m_LayoutInflater:Landroid/view/LayoutInflater;

.field private final m_Owner:Lcom/android/camera/menu/MenuListView;


# direct methods
.method constructor <init>(Lcom/android/camera/menu/MenuListView;)V
    .locals 1
    .parameter "owner"

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/menu/MenuAdapter;->m_CustomMenuItemTypes:Ljava/util/ArrayList;

    .line 26
    invoke-virtual {p1}, Lcom/android/camera/menu/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/menu/MenuAdapter;->m_Context:Landroid/content/Context;

    .line 27
    iget-object v0, p0, Lcom/android/camera/menu/MenuAdapter;->m_Context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/menu/MenuAdapter;->m_LayoutInflater:Landroid/view/LayoutInflater;

    .line 28
    iput-object p1, p0, Lcom/android/camera/menu/MenuAdapter;->m_Owner:Lcom/android/camera/menu/MenuListView;

    .line 29
    return-void
.end method

.method private checkMenuItemTypes([Lcom/android/camera/menu/MenuItem;)Z
    .locals 9
    .parameter "menuItems"

    .prologue
    .line 51
    const/4 v3, 0x0

    .line 52
    .local v3, isChanged:Z
    array-length v8, p1

    add-int/lit8 v2, v8, -0x1

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_4

    .line 54
    aget-object v4, p1, v2

    .line 55
    .local v4, item:Lcom/android/camera/menu/MenuItem;
    if-eqz v4, :cond_2

    .line 58
    invoke-virtual {v4}, Lcom/android/camera/menu/MenuItem;->isCustomView()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 60
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 61
    .local v0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/android/camera/menu/MenuItem;>;"
    const/4 v1, 0x0

    .line 62
    .local v1, containsType:Z
    const/4 v7, 0x0

    .local v7, typeIndex:I
    iget-object v8, p0, Lcom/android/camera/menu/MenuAdapter;->m_CustomMenuItemTypes:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v6

    .local v6, typeCount:I
    :goto_1
    if-ge v7, v6, :cond_0

    .line 64
    iget-object v8, p0, Lcom/android/camera/menu/MenuAdapter;->m_CustomMenuItemTypes:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Class;

    invoke-virtual {v8, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 66
    const/4 v1, 0x1

    .line 70
    :cond_0
    if-nez v1, :cond_1

    .line 72
    const/4 v3, 0x1

    .line 73
    iget-object v8, p0, Lcom/android/camera/menu/MenuAdapter;->m_CustomMenuItemTypes:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    .end local v0           #clazz:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/android/camera/menu/MenuItem;>;"
    .end local v1           #containsType:Z
    .end local v6           #typeCount:I
    .end local v7           #typeIndex:I
    :cond_1
    invoke-virtual {v4}, Lcom/android/camera/menu/MenuItem;->getItems()[Lcom/android/camera/menu/MenuItem;

    move-result-object v5

    .line 79
    .local v5, subItems:[Lcom/android/camera/menu/MenuItem;
    if-eqz v5, :cond_2

    invoke-direct {p0, v5}, Lcom/android/camera/menu/MenuAdapter;->checkMenuItemTypes([Lcom/android/camera/menu/MenuItem;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 80
    const/4 v3, 0x1

    .line 52
    .end local v5           #subItems:[Lcom/android/camera/menu/MenuItem;
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 62
    .restart local v0       #clazz:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/android/camera/menu/MenuItem;>;"
    .restart local v1       #containsType:Z
    .restart local v6       #typeCount:I
    .restart local v7       #typeIndex:I
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 83
    .end local v0           #clazz:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/android/camera/menu/MenuItem;>;"
    .end local v1           #containsType:Z
    .end local v4           #item:Lcom/android/camera/menu/MenuItem;
    .end local v6           #typeCount:I
    .end local v7           #typeIndex:I
    :cond_4
    return v3
.end method


# virtual methods
.method public checkMenuItemTypes()Z
    .locals 2

    .prologue
    .line 36
    iget-object v1, p0, Lcom/android/camera/menu/MenuAdapter;->m_Owner:Lcom/android/camera/menu/MenuListView;

    invoke-virtual {v1}, Lcom/android/camera/menu/MenuListView;->getItems()[Lcom/android/camera/menu/MenuItem;

    move-result-object v0

    .line 37
    .local v0, menuItems:[Lcom/android/camera/menu/MenuItem;
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 39
    iget-object v1, p0, Lcom/android/camera/menu/MenuAdapter;->m_CustomMenuItemTypes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 40
    invoke-direct {p0, v0}, Lcom/android/camera/menu/MenuAdapter;->checkMenuItemTypes([Lcom/android/camera/menu/MenuItem;)Z

    move-result v1

    .line 47
    :goto_0
    return v1

    .line 42
    :cond_0
    iget-object v1, p0, Lcom/android/camera/menu/MenuAdapter;->m_CustomMenuItemTypes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 44
    iget-object v1, p0, Lcom/android/camera/menu/MenuAdapter;->m_CustomMenuItemTypes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 45
    const/4 v1, 0x1

    goto :goto_0

    .line 47
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getChild(II)Lcom/android/camera/menu/MenuItem;
    .locals 1
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/camera/menu/MenuAdapter;->m_Owner:Lcom/android/camera/menu/MenuListView;

    invoke-virtual {v0}, Lcom/android/camera/menu/MenuListView;->getVisibleItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v0}, Lcom/android/camera/menu/MenuItem;->getVisibleItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/menu/MenuItem;

    return-object v0
.end method

.method public bridge synthetic getChild(II)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/menu/MenuAdapter;->getChild(II)Lcom/android/camera/menu/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public getChildId(II)J
    .locals 2
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 101
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/menu/MenuAdapter;->getChild(II)Lcom/android/camera/menu/MenuItem;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getChildType(II)I
    .locals 5
    .parameter "position"
    .parameter "childPosition"

    .prologue
    .line 128
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/menu/MenuAdapter;->getChild(II)Lcom/android/camera/menu/MenuItem;

    move-result-object v3

    .line 129
    .local v3, item:Lcom/android/camera/menu/MenuItem;
    invoke-virtual {v3}, Lcom/android/camera/menu/MenuItem;->isCustomView()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 131
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 132
    .local v0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/android/camera/menu/MenuItem;>;"
    const/4 v2, 0x0

    .local v2, i:I
    iget-object v4, p0, Lcom/android/camera/menu/MenuAdapter;->m_CustomMenuItemTypes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, count:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 134
    iget-object v4, p0, Lcom/android/camera/menu/MenuAdapter;->m_CustomMenuItemTypes:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 135
    add-int/lit8 v4, v2, 0x1

    .line 138
    .end local v0           #clazz:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/android/camera/menu/MenuItem;>;"
    .end local v1           #count:I
    .end local v2           #i:I
    :goto_1
    return v4

    .line 132
    .restart local v0       #clazz:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/android/camera/menu/MenuItem;>;"
    .restart local v1       #count:I
    .restart local v2       #i:I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 138
    .end local v0           #clazz:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/android/camera/menu/MenuItem;>;"
    .end local v1           #count:I
    .end local v2           #i:I
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public getChildTypeCount()I
    .locals 1

    .prologue
    .line 146
    const/16 v0, 0x20

    return v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "arg2"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 110
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/menu/MenuAdapter;->getChild(II)Lcom/android/camera/menu/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/menu/MenuAdapter;->m_Context:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/camera/menu/MenuAdapter;->m_LayoutInflater:Landroid/view/LayoutInflater;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3, p4}, Lcom/android/camera/menu/MenuItem;->getView(Landroid/content/Context;Landroid/view/LayoutInflater;ILandroid/view/View;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getChildrenCount(I)I
    .locals 1
    .parameter "groupPosition"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/camera/menu/MenuAdapter;->m_Owner:Lcom/android/camera/menu/MenuListView;

    invoke-virtual {v0}, Lcom/android/camera/menu/MenuListView;->getVisibleItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v0}, Lcom/android/camera/menu/MenuItem;->getVisibleItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getGroup(I)Lcom/android/camera/menu/MenuItem;
    .locals 1
    .parameter "groupPosition"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/camera/menu/MenuAdapter;->m_Owner:Lcom/android/camera/menu/MenuListView;

    invoke-virtual {v0}, Lcom/android/camera/menu/MenuListView;->getVisibleItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/menu/MenuItem;

    return-object v0
.end method

.method public bridge synthetic getGroup(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 11
    invoke-virtual {p0, p1}, Lcom/android/camera/menu/MenuAdapter;->getGroup(I)Lcom/android/camera/menu/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/camera/menu/MenuAdapter;->m_Owner:Lcom/android/camera/menu/MenuListView;

    invoke-virtual {v0}, Lcom/android/camera/menu/MenuListView;->getVisibleItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getGroupId(I)J
    .locals 2
    .parameter "groupPosition"

    .prologue
    .line 173
    invoke-virtual {p0, p1}, Lcom/android/camera/menu/MenuAdapter;->getGroup(I)Lcom/android/camera/menu/MenuItem;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getGroupType(I)I
    .locals 5
    .parameter "position"

    .prologue
    .line 191
    invoke-virtual {p0, p1}, Lcom/android/camera/menu/MenuAdapter;->getGroup(I)Lcom/android/camera/menu/MenuItem;

    move-result-object v3

    .line 192
    .local v3, item:Lcom/android/camera/menu/MenuItem;
    invoke-virtual {v3}, Lcom/android/camera/menu/MenuItem;->isCustomView()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 194
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 195
    .local v0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/android/camera/menu/MenuItem;>;"
    const/4 v2, 0x0

    .local v2, i:I
    iget-object v4, p0, Lcom/android/camera/menu/MenuAdapter;->m_CustomMenuItemTypes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, count:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 197
    iget-object v4, p0, Lcom/android/camera/menu/MenuAdapter;->m_CustomMenuItemTypes:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 198
    add-int/lit8 v4, v2, 0x1

    .line 201
    .end local v0           #clazz:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/android/camera/menu/MenuItem;>;"
    .end local v1           #count:I
    .end local v2           #i:I
    :goto_1
    return v4

    .line 195
    .restart local v0       #clazz:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/android/camera/menu/MenuItem;>;"
    .restart local v1       #count:I
    .restart local v2       #i:I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 201
    .end local v0           #clazz:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/android/camera/menu/MenuItem;>;"
    .end local v1           #count:I
    .end local v2           #i:I
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public getGroupTypeCount()I
    .locals 1

    .prologue
    .line 209
    const/16 v0, 0x20

    return v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "groupPosition"
    .parameter "arg1"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 182
    invoke-virtual {p0, p1}, Lcom/android/camera/menu/MenuAdapter;->getGroup(I)Lcom/android/camera/menu/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/menu/MenuAdapter;->m_Context:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/camera/menu/MenuAdapter;->m_LayoutInflater:Landroid/view/LayoutInflater;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3, p3}, Lcom/android/camera/menu/MenuItem;->getView(Landroid/content/Context;Landroid/view/LayoutInflater;ILandroid/view/View;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 218
    const/4 v0, 0x1

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 227
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/menu/MenuAdapter;->getChild(II)Lcom/android/camera/menu/MenuItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/menu/MenuItem;->isSelectable()Z

    move-result v0

    return v0
.end method
