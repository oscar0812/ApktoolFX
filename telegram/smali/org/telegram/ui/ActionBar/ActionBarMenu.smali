.class public Lorg/telegram/ui/ActionBar/ActionBarMenu;
.super Landroid/widget/LinearLayout;
.source "ActionBarMenu.java"


# instance fields
.field protected isActionMode:Z

.field protected parentActionBar:Lorg/telegram/ui/ActionBar/ActionBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/ActionBar;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layer"    # Lorg/telegram/ui/ActionBar/ActionBar;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 26
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->setOrientation(I)V

    .line 27
    iput-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu;->parentActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 28
    return-void
.end method


# virtual methods
.method public addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .locals 1
    .param p1, "id"    # I
    .param p2, "icon"    # I

    .prologue
    .line 59
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu;->isActionMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu;->parentActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget v0, v0, Lorg/telegram/ui/ActionBar/ActionBar;->itemsActionModeBackgroundColor:I

    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(III)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu;->parentActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget v0, v0, Lorg/telegram/ui/ActionBar/ActionBar;->itemsBackgroundColor:I

    goto :goto_0
.end method

.method public addItem(III)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .locals 6
    .param p1, "id"    # I
    .param p2, "icon"    # I
    .param p3, "backgroundColor"    # I

    .prologue
    .line 63
    const/4 v4, 0x0

    const/high16 v0, 0x42400000    # 48.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(IIILandroid/graphics/drawable/Drawable;I)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    return-object v0
.end method

.method public addItem(IIILandroid/graphics/drawable/Drawable;I)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .locals 3
    .param p1, "id"    # I
    .param p2, "icon"    # I
    .param p3, "backgroundColor"    # I
    .param p4, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p5, "width"    # I

    .prologue
    .line 71
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-boolean v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu;->isActionMode:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu;->parentActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget v1, v1, Lorg/telegram/ui/ActionBar/ActionBar;->itemsActionModeColor:I

    :goto_0
    invoke-direct {v0, v2, p0, p3, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/ActionBarMenu;II)V

    .line 72
    .local v0, "menuItem":Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setTag(Ljava/lang/Object;)V

    .line 73
    if-eqz p4, :cond_2

    .line 74
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v1, p4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 78
    :cond_0
    :goto_1
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, p5, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    new-instance v1, Lorg/telegram/ui/ActionBar/ActionBarMenu$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ActionBar/ActionBarMenu$1;-><init>(Lorg/telegram/ui/ActionBar/ActionBarMenu;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    return-object v0

    .line 71
    .end local v0    # "menuItem":Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu;->parentActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget v1, v1, Lorg/telegram/ui/ActionBar/ActionBar;->itemsColor:I

    goto :goto_0

    .line 75
    .restart local v0    # "menuItem":Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    :cond_2
    if-eqz p2, :cond_0

    .line 76
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method

.method public addItem(ILandroid/graphics/drawable/Drawable;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .locals 6
    .param p1, "id"    # I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 55
    const/4 v2, 0x0

    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu;->isActionMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu;->parentActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget v3, v0, Lorg/telegram/ui/ActionBar/ActionBar;->itemsActionModeBackgroundColor:I

    :goto_0
    const/high16 v0, 0x42400000    # 48.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    move-object v0, p0

    move v1, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(IIILandroid/graphics/drawable/Drawable;I)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu;->parentActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget v3, v0, Lorg/telegram/ui/ActionBar/ActionBar;->itemsBackgroundColor:I

    goto :goto_0
.end method

.method public addItemWithWidth(III)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .locals 6
    .param p1, "id"    # I
    .param p2, "icon"    # I
    .param p3, "width"    # I

    .prologue
    .line 67
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu;->isActionMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu;->parentActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget v3, v0, Lorg/telegram/ui/ActionBar/ActionBar;->itemsActionModeBackgroundColor:I

    :goto_0
    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(IIILandroid/graphics/drawable/Drawable;I)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu;->parentActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget v3, v0, Lorg/telegram/ui/ActionBar/ActionBar;->itemsBackgroundColor:I

    goto :goto_0
.end method

.method public clearItems()V
    .locals 0

    .prologue
    .line 136
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->removeAllViews()V

    .line 137
    return-void
.end method

.method public closeSearchField(Z)V
    .locals 6
    .param p1, "closeKeyboard"    # Z

    .prologue
    .line 160
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->getChildCount()I

    move-result v1

    .line 161
    .local v1, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 162
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 163
    .local v3, "view":Landroid/view/View;
    instance-of v4, v3, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v4, :cond_1

    move-object v2, v3

    .line 164
    check-cast v2, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 165
    .local v2, "item":Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->isSearchField()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 166
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu;->parentActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->onSearchFieldVisibilityChanged(Z)V

    .line 167
    invoke-virtual {v2, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->toggleSearch(Z)Z

    .line 172
    .end local v2    # "item":Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .end local v3    # "view":Landroid/view/View;
    :cond_0
    return-void

    .line 161
    .restart local v3    # "view":Landroid/view/View;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getItem(I)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 211
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 212
    .local v0, "v":Landroid/view/View;
    instance-of v1, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v1, :cond_0

    .line 213
    check-cast v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 215
    .end local v0    # "v":Landroid/view/View;
    :goto_0
    return-object v0

    .restart local v0    # "v":Landroid/view/View;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hideAllPopupMenus()V
    .locals 4

    .prologue
    .line 98
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->getChildCount()I

    move-result v1

    .line 99
    .local v1, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 100
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 101
    .local v2, "view":Landroid/view/View;
    instance-of v3, v2, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v3, :cond_0

    .line 102
    check-cast v2, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .end local v2    # "view":Landroid/view/View;
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->closeSubMenu()V

    .line 99
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 105
    :cond_1
    return-void
.end method

.method public onItemClick(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 130
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu;->parentActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBar;->actionBarMenuOnItemClick:Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu;->parentActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBar;->actionBarMenuOnItemClick:Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;->onItemClick(I)V

    .line 133
    :cond_0
    return-void
.end method

.method public onMenuButtonPressed()V
    .locals 5

    .prologue
    .line 140
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->getChildCount()I

    move-result v1

    .line 141
    .local v1, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 142
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 143
    .local v3, "view":Landroid/view/View;
    instance-of v4, v3, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v4, :cond_0

    move-object v2, v3

    .line 144
    check-cast v2, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 145
    .local v2, "item":Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_1

    .line 141
    .end local v2    # "item":Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 148
    .restart local v2    # "item":Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    :cond_1
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hasSubMenu()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 149
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->toggleSubMenu()V

    .line 157
    .end local v2    # "item":Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .end local v3    # "view":Landroid/view/View;
    :cond_2
    :goto_1
    return-void

    .line 151
    .restart local v2    # "item":Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .restart local v3    # "view":Landroid/view/View;
    :cond_3
    iget-boolean v4, v2, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->overrideMenuClick:Z

    if-eqz v4, :cond_0

    .line 152
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->onItemClick(I)V

    goto :goto_1
.end method

.method public openSearchField(ZLjava/lang/String;)V
    .locals 6
    .param p1, "toggle"    # Z
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 193
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->getChildCount()I

    move-result v1

    .line 194
    .local v1, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 195
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 196
    .local v3, "view":Landroid/view/View;
    instance-of v4, v3, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v4, :cond_2

    move-object v2, v3

    .line 197
    check-cast v2, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 198
    .local v2, "item":Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->isSearchField()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 199
    if-eqz p1, :cond_0

    .line 200
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu;->parentActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->toggleSearch(Z)Z

    move-result v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->onSearchFieldVisibilityChanged(Z)V

    .line 202
    :cond_0
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getSearchField()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v4

    invoke-virtual {v4, p2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setText(Ljava/lang/CharSequence;)V

    .line 203
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getSearchField()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(I)V

    .line 208
    .end local v2    # "item":Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .end local v3    # "view":Landroid/view/View;
    :cond_1
    return-void

    .line 194
    .restart local v3    # "view":Landroid/view/View;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected redrawPopup(I)V
    .locals 5
    .param p1, "color"    # I

    .prologue
    .line 119
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->getChildCount()I

    move-result v1

    .line 120
    .local v1, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 121
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 122
    .local v3, "view":Landroid/view/View;
    instance-of v4, v3, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v4, :cond_0

    move-object v2, v3

    .line 123
    check-cast v2, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 124
    .local v2, "item":Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    invoke-virtual {v2, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->redrawPopup(I)V

    .line 120
    .end local v2    # "item":Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 127
    .end local v3    # "view":Landroid/view/View;
    :cond_1
    return-void
.end method

.method protected setPopupItemsColor(I)V
    .locals 5
    .param p1, "color"    # I

    .prologue
    .line 108
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->getChildCount()I

    move-result v1

    .line 109
    .local v1, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 110
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 111
    .local v3, "view":Landroid/view/View;
    instance-of v4, v3, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v4, :cond_0

    move-object v2, v3

    .line 112
    check-cast v2, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 113
    .local v2, "item":Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    invoke-virtual {v2, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setPopupItemsColor(I)V

    .line 109
    .end local v2    # "item":Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 116
    .end local v3    # "view":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public setSearchTextColor(IZ)V
    .locals 5
    .param p1, "color"    # I
    .param p2, "placeholder"    # Z

    .prologue
    .line 175
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->getChildCount()I

    move-result v1

    .line 176
    .local v1, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 177
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 178
    .local v3, "view":Landroid/view/View;
    instance-of v4, v3, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v4, :cond_2

    move-object v2, v3

    .line 179
    check-cast v2, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 180
    .local v2, "item":Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->isSearchField()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 181
    if-eqz p2, :cond_1

    .line 182
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getSearchField()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v4

    invoke-virtual {v4, p1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setHintTextColor(I)V

    .line 190
    .end local v2    # "item":Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .end local v3    # "view":Landroid/view/View;
    :cond_0
    :goto_1
    return-void

    .line 184
    .restart local v2    # "item":Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .restart local v3    # "view":Landroid/view/View;
    :cond_1
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getSearchField()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v4

    invoke-virtual {v4, p1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setTextColor(I)V

    goto :goto_1

    .line 176
    .end local v2    # "item":Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected updateItemsBackgroundColor()V
    .locals 4

    .prologue
    .line 35
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->getChildCount()I

    move-result v1

    .line 36
    .local v1, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 37
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 38
    .local v2, "view":Landroid/view/View;
    instance-of v3, v2, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v3, :cond_0

    .line 39
    iget-boolean v3, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu;->isActionMode:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu;->parentActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget v3, v3, Lorg/telegram/ui/ActionBar/ActionBar;->itemsActionModeBackgroundColor:I

    :goto_1
    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 36
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 39
    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu;->parentActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget v3, v3, Lorg/telegram/ui/ActionBar/ActionBar;->itemsBackgroundColor:I

    goto :goto_1

    .line 42
    .end local v2    # "view":Landroid/view/View;
    :cond_2
    return-void
.end method

.method protected updateItemsColor()V
    .locals 4

    .prologue
    .line 45
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->getChildCount()I

    move-result v1

    .line 46
    .local v1, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 47
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 48
    .local v2, "view":Landroid/view/View;
    instance-of v3, v2, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v3, :cond_0

    .line 49
    check-cast v2, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .end local v2    # "view":Landroid/view/View;
    iget-boolean v3, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu;->isActionMode:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu;->parentActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget v3, v3, Lorg/telegram/ui/ActionBar/ActionBar;->itemsActionModeColor:I

    :goto_1
    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIconColor(I)V

    .line 46
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 49
    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu;->parentActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget v3, v3, Lorg/telegram/ui/ActionBar/ActionBar;->itemsColor:I

    goto :goto_1

    .line 52
    :cond_2
    return-void
.end method
