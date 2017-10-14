.class public Lorg/telegram/ui/Components/PhotoPaintView;
.super Landroid/widget/FrameLayout;
.source "PhotoPaintView.java"

# interfaces
.implements Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/PhotoPaintView$StickerPosition;
    }
.end annotation


# static fields
.field private static final gallery_menu_done:I = 0x1


# instance fields
.field private bitmapToEdit:Landroid/graphics/Bitmap;

.field private brushes:[Lorg/telegram/ui/Components/Paint/Brush;

.field private cancelTextView:Landroid/widget/TextView;

.field private colorPicker:Lorg/telegram/ui/Components/Paint/Views/ColorPicker;

.field private colorPickerAnimator:Landroid/animation/Animator;

.field currentBrush:I

.field private currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

.field private curtainView:Landroid/widget/FrameLayout;

.field private dimView:Landroid/widget/FrameLayout;

.field private doneTextView:Landroid/widget/TextView;

.field private editedTextPosition:Lorg/telegram/ui/Components/Point;

.field private editedTextRotation:F

.field private editedTextScale:F

.field private editingText:Z

.field private entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

.field private faces:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/ui/Components/Paint/PhotoFace;",
            ">;"
        }
    .end annotation
.end field

.field private initialText:Ljava/lang/String;

.field private orientation:I

.field private paintButton:Landroid/widget/ImageView;

.field private paintingSize:Lorg/telegram/ui/Components/Size;

.field private pickingSticker:Z

.field private popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

.field private popupRect:Landroid/graphics/Rect;

.field private popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

.field private queue:Lorg/telegram/messenger/DispatchQueue;

.field private renderView:Lorg/telegram/ui/Components/Paint/RenderView;

.field private selectedStroke:Z

.field private selectionContainerView:Landroid/widget/FrameLayout;

.field private stickersView:Lorg/telegram/ui/Components/StickerMasksView;

.field private textDimView:Landroid/widget/FrameLayout;

.field private toolsView:Landroid/widget/FrameLayout;

.field private undoStore:Lorg/telegram/ui/Components/Paint/UndoStore;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;I)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "rotation"    # I

    .prologue
    .line 117
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 70
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/telegram/ui/Components/Paint/Brush;

    const/4 v1, 0x0

    new-instance v2, Lorg/telegram/ui/Components/Paint/Brush$Radial;

    invoke-direct {v2}, Lorg/telegram/ui/Components/Paint/Brush$Radial;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lorg/telegram/ui/Components/Paint/Brush$Elliptical;

    invoke-direct {v2}, Lorg/telegram/ui/Components/Paint/Brush$Elliptical;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lorg/telegram/ui/Components/Paint/Brush$Neon;

    invoke-direct {v2}, Lorg/telegram/ui/Components/Paint/Brush$Neon;-><init>()V

    aput-object v2, v0, v1

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->brushes:[Lorg/telegram/ui/Components/Paint/Brush;

    .line 107
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->selectedStroke:Z

    .line 119
    new-instance v0, Lorg/telegram/messenger/DispatchQueue;

    const-string/jumbo v1, "Paint"

    invoke-direct {v0, v1}, Lorg/telegram/messenger/DispatchQueue;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->queue:Lorg/telegram/messenger/DispatchQueue;

    .line 121
    iput-object p2, p0, Lorg/telegram/ui/Components/PhotoPaintView;->bitmapToEdit:Landroid/graphics/Bitmap;

    .line 122
    iput p3, p0, Lorg/telegram/ui/Components/PhotoPaintView;->orientation:I

    .line 123
    new-instance v0, Lorg/telegram/ui/Components/Paint/UndoStore;

    invoke-direct {v0}, Lorg/telegram/ui/Components/Paint/UndoStore;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->undoStore:Lorg/telegram/ui/Components/Paint/UndoStore;

    .line 124
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->undoStore:Lorg/telegram/ui/Components/Paint/UndoStore;

    new-instance v1, Lorg/telegram/ui/Components/PhotoPaintView$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/PhotoPaintView$1;-><init>(Lorg/telegram/ui/Components/PhotoPaintView;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/UndoStore;->setDelegate(Lorg/telegram/ui/Components/Paint/UndoStore$UndoStoreDelegate;)V

    .line 131
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->curtainView:Landroid/widget/FrameLayout;

    .line 132
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->curtainView:Landroid/widget/FrameLayout;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 133
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->curtainView:Landroid/widget/FrameLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 134
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->curtainView:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/PhotoPaintView;->addView(Landroid/view/View;)V

    .line 136
    new-instance v0, Lorg/telegram/ui/Components/Paint/RenderView;

    new-instance v1, Lorg/telegram/ui/Components/Paint/Painting;

    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoPaintView;->getPaintingSize()Lorg/telegram/ui/Components/Size;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/telegram/ui/Components/Paint/Painting;-><init>(Lorg/telegram/ui/Components/Size;)V

    iget v2, p0, Lorg/telegram/ui/Components/PhotoPaintView;->orientation:I

    invoke-direct {v0, p1, v1, p2, v2}, Lorg/telegram/ui/Components/Paint/RenderView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/Paint/Painting;Landroid/graphics/Bitmap;I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    .line 137
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    new-instance v1, Lorg/telegram/ui/Components/PhotoPaintView$2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/PhotoPaintView$2;-><init>(Lorg/telegram/ui/Components/PhotoPaintView;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/RenderView;->setDelegate(Lorg/telegram/ui/Components/Paint/RenderView$RenderViewDelegate;)V

    .line 160
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->undoStore:Lorg/telegram/ui/Components/Paint/UndoStore;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/RenderView;->setUndoStore(Lorg/telegram/ui/Components/Paint/UndoStore;)V

    .line 161
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->queue:Lorg/telegram/messenger/DispatchQueue;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/RenderView;->setQueue(Lorg/telegram/messenger/DispatchQueue;)V

    .line 162
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/RenderView;->setVisibility(I)V

    .line 163
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->brushes:[Lorg/telegram/ui/Components/Paint/Brush;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/RenderView;->setBrush(Lorg/telegram/ui/Components/Paint/Brush;)V

    .line 164
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/16 v3, 0x33

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Components/PhotoPaintView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 166
    new-instance v0, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    new-instance v1, Lorg/telegram/ui/Components/PhotoPaintView$3;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/PhotoPaintView$3;-><init>(Lorg/telegram/ui/Components/PhotoPaintView;)V

    invoke-direct {v0, p1, v1}, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView$EntitiesContainerViewDelegate;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    .line 182
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->setPivotX(F)V

    .line 183
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->setPivotY(F)V

    .line 184
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/PhotoPaintView;->addView(Landroid/view/View;)V

    .line 186
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->dimView:Landroid/widget/FrameLayout;

    .line 187
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->dimView:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 188
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->dimView:Landroid/widget/FrameLayout;

    const/high16 v1, 0x66000000

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 189
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->dimView:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 190
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->dimView:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/PhotoPaintView;->addView(Landroid/view/View;)V

    .line 192
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->textDimView:Landroid/widget/FrameLayout;

    .line 193
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->textDimView:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 194
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->textDimView:Landroid/widget/FrameLayout;

    const/high16 v1, 0x66000000

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 195
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->textDimView:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 196
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->textDimView:Landroid/widget/FrameLayout;

    new-instance v1, Lorg/telegram/ui/Components/PhotoPaintView$4;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/PhotoPaintView$4;-><init>(Lorg/telegram/ui/Components/PhotoPaintView;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    new-instance v0, Lorg/telegram/ui/Components/PhotoPaintView$5;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/PhotoPaintView$5;-><init>(Lorg/telegram/ui/Components/PhotoPaintView;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->selectionContainerView:Landroid/widget/FrameLayout;

    .line 209
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->selectionContainerView:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/PhotoPaintView;->addView(Landroid/view/View;)V

    .line 211
    new-instance v0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->colorPicker:Lorg/telegram/ui/Components/Paint/Views/ColorPicker;

    .line 212
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->colorPicker:Lorg/telegram/ui/Components/Paint/Views/ColorPicker;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/PhotoPaintView;->addView(Landroid/view/View;)V

    .line 213
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->colorPicker:Lorg/telegram/ui/Components/Paint/Views/ColorPicker;

    new-instance v1, Lorg/telegram/ui/Components/PhotoPaintView$6;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/PhotoPaintView$6;-><init>(Lorg/telegram/ui/Components/PhotoPaintView;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->setDelegate(Lorg/telegram/ui/Components/Paint/Views/ColorPicker$ColorPickerDelegate;)V

    .line 254
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->toolsView:Landroid/widget/FrameLayout;

    .line 255
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->toolsView:Landroid/widget/FrameLayout;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 256
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->toolsView:Landroid/widget/FrameLayout;

    const/4 v1, -0x1

    const/16 v2, 0x30

    const/16 v3, 0x53

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Components/PhotoPaintView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 258
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->cancelTextView:Landroid/widget/TextView;

    .line 259
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->cancelTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 260
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->cancelTextView:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 261
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->cancelTextView:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 262
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->cancelTextView:Landroid/widget/TextView;

    const v1, -0xc2c2c3

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 263
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->cancelTextView:Landroid/widget/TextView;

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/4 v2, 0x0

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 264
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->cancelTextView:Landroid/widget/TextView;

    const-string/jumbo v1, "Cancel"

    const v2, 0x7f0700f4

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->cancelTextView:Landroid/widget/TextView;

    const-string/jumbo v1, "fonts/rmedium.ttf"

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 266
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->toolsView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->cancelTextView:Landroid/widget/TextView;

    const/4 v2, -0x2

    const/4 v3, -0x1

    const/16 v4, 0x33

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 268
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->doneTextView:Landroid/widget/TextView;

    .line 269
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->doneTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 270
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->doneTextView:Landroid/widget/TextView;

    const v1, -0xae420d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 271
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->doneTextView:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 272
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->doneTextView:Landroid/widget/TextView;

    const v1, -0xc2c2c3

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 273
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->doneTextView:Landroid/widget/TextView;

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/4 v2, 0x0

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 274
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->doneTextView:Landroid/widget/TextView;

    const-string/jumbo v1, "Done"

    const v2, 0x7f0701f2

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 275
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->doneTextView:Landroid/widget/TextView;

    const-string/jumbo v1, "fonts/rmedium.ttf"

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 276
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->toolsView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->doneTextView:Landroid/widget/TextView;

    const/4 v2, -0x2

    const/4 v3, -0x1

    const/16 v4, 0x35

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 278
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->paintButton:Landroid/widget/ImageView;

    .line 279
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->paintButton:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 280
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->paintButton:Landroid/widget/ImageView;

    const v1, 0x7f020169

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 281
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->paintButton:Landroid/widget/ImageView;

    const v1, 0x40ffffff    # 7.9999995f

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 282
    iget-object v9, p0, Lorg/telegram/ui/Components/PhotoPaintView;->toolsView:Landroid/widget/FrameLayout;

    iget-object v10, p0, Lorg/telegram/ui/Components/PhotoPaintView;->paintButton:Landroid/widget/ImageView;

    const/16 v0, 0x36

    const/high16 v1, -0x40800000    # -1.0f

    const/16 v2, 0x11

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x42600000    # 56.0f

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v9, v10, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 283
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->paintButton:Landroid/widget/ImageView;

    new-instance v1, Lorg/telegram/ui/Components/PhotoPaintView$7;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/PhotoPaintView$7;-><init>(Lorg/telegram/ui/Components/PhotoPaintView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 290
    new-instance v7, Landroid/widget/ImageView;

    invoke-direct {v7, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 291
    .local v7, "stickerButton":Landroid/widget/ImageView;
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 292
    const v0, 0x7f02016d

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 293
    const v0, 0x40ffffff    # 7.9999995f

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 294
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->toolsView:Landroid/widget/FrameLayout;

    const/16 v1, 0x36

    const/4 v2, -0x1

    const/16 v3, 0x11

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 295
    new-instance v0, Lorg/telegram/ui/Components/PhotoPaintView$8;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/PhotoPaintView$8;-><init>(Lorg/telegram/ui/Components/PhotoPaintView;)V

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 302
    new-instance v8, Landroid/widget/ImageView;

    invoke-direct {v8, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 303
    .local v8, "textButton":Landroid/widget/ImageView;
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 304
    const v0, 0x7f02016b

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 305
    const v0, 0x40ffffff    # 7.9999995f

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 306
    iget-object v9, p0, Lorg/telegram/ui/Components/PhotoPaintView;->toolsView:Landroid/widget/FrameLayout;

    const/16 v0, 0x36

    const/high16 v1, -0x40800000    # -1.0f

    const/16 v2, 0x11

    const/high16 v3, 0x42600000    # 56.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v9, v8, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 307
    new-instance v0, Lorg/telegram/ui/Components/PhotoPaintView$9;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/PhotoPaintView$9;-><init>(Lorg/telegram/ui/Components/PhotoPaintView;)V

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 314
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->colorPicker:Lorg/telegram/ui/Components/Paint/Views/ColorPicker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->setUndoEnabled(Z)V

    .line 315
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->colorPicker:Lorg/telegram/ui/Components/Paint/Views/ColorPicker;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->getSwatch()Lorg/telegram/ui/Components/Paint/Swatch;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Components/PhotoPaintView;->setCurrentSwatch(Lorg/telegram/ui/Components/Paint/Swatch;Z)V

    .line 316
    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoPaintView;->updateSettingsButton()V

    .line 317
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/PhotoPaintView;)Lorg/telegram/ui/Components/Paint/UndoStore;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoPaintView;

    .prologue
    .line 63
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->undoStore:Lorg/telegram/ui/Components/Paint/UndoStore;

    return-object v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/PhotoPaintView;)Lorg/telegram/ui/Components/Paint/Views/ColorPicker;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoPaintView;

    .prologue
    .line 63
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->colorPicker:Lorg/telegram/ui/Components/Paint/Views/ColorPicker;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/PhotoPaintView;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoPaintView;

    .prologue
    .line 63
    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoPaintView;->openStickersView()V

    return-void
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/PhotoPaintView;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoPaintView;

    .prologue
    .line 63
    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoPaintView;->createText()V

    return-void
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Components/PhotoPaintView;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoPaintView;

    .prologue
    .line 63
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->dimView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Components/PhotoPaintView;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoPaintView;

    .prologue
    .line 63
    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoPaintView;->closeStickersView()V

    return-void
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Components/PhotoPaintView;Lorg/telegram/tgnet/TLRPC$Document;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoPaintView;
    .param p1, "x1"    # Lorg/telegram/tgnet/TLRPC$Document;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PhotoPaintView;->createSticker(Lorg/telegram/tgnet/TLRPC$Document;)V

    return-void
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Components/PhotoPaintView;)Lorg/telegram/ui/Components/StickerMasksView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoPaintView;

    .prologue
    .line 63
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->stickersView:Lorg/telegram/ui/Components/StickerMasksView;

    return-object v0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Components/PhotoPaintView;Lorg/telegram/ui/Components/Paint/Views/EntityView;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoPaintView;
    .param p1, "x1"    # Lorg/telegram/ui/Components/Paint/Views/EntityView;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PhotoPaintView;->removeEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    return-void
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/PhotoPaintView;)Lorg/telegram/ui/Components/Paint/Views/EntityView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoPaintView;

    .prologue
    .line 63
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    return-object v0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/Components/PhotoPaintView;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoPaintView;

    .prologue
    .line 63
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    return-object v0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/Components/PhotoPaintView;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoPaintView;

    .prologue
    .line 63
    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoPaintView;->editSelectedTextEntity()V

    return-void
.end method

.method static synthetic access$2200(Lorg/telegram/ui/Components/PhotoPaintView;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoPaintView;

    .prologue
    .line 63
    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoPaintView;->duplicateSelectedEntity()V

    return-void
.end method

.method static synthetic access$2300(Lorg/telegram/ui/Components/PhotoPaintView;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoPaintView;

    .prologue
    .line 63
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    return-object v0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/Components/PhotoPaintView;I)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoPaintView;
    .param p1, "x1"    # I

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PhotoPaintView;->setBrush(I)V

    return-void
.end method

.method static synthetic access$2500(Lorg/telegram/ui/Components/PhotoPaintView;IIZ)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoPaintView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/PhotoPaintView;->buttonForBrush(IIZ)Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/Components/PhotoPaintView;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoPaintView;
    .param p1, "x1"    # Z

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PhotoPaintView;->setStroke(Z)V

    return-void
.end method

.method static synthetic access$2700(Lorg/telegram/ui/Components/PhotoPaintView;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoPaintView;

    .prologue
    .line 63
    iget-boolean v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->selectedStroke:Z

    return v0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/Components/PhotoPaintView;ZLjava/lang/String;Z)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoPaintView;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Z

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/PhotoPaintView;->buttonForText(ZLjava/lang/String;Z)Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/Components/PhotoPaintView;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoPaintView;

    .prologue
    .line 63
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->popupRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/PhotoPaintView;Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoPaintView;
    .param p1, "x1"    # Lorg/telegram/ui/Components/Paint/Views/EntityView;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PhotoPaintView;->selectEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/Components/PhotoPaintView;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoPaintView;

    .prologue
    .line 63
    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoPaintView;->getFrameRotation()I

    move-result v0

    return v0
.end method

.method static synthetic access$3100(Lorg/telegram/ui/Components/PhotoPaintView;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoPaintView;

    .prologue
    .line 63
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->bitmapToEdit:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$3200(Lorg/telegram/ui/Components/PhotoPaintView;)Lorg/telegram/ui/Components/Size;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoPaintView;

    .prologue
    .line 63
    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoPaintView;->getPaintingSize()Lorg/telegram/ui/Components/Size;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3300(Lorg/telegram/ui/Components/PhotoPaintView;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoPaintView;

    .prologue
    .line 63
    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoPaintView;->isSidewardOrientation()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3402(Lorg/telegram/ui/Components/PhotoPaintView;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoPaintView;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 63
    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->faces:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/PhotoPaintView;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoPaintView;

    .prologue
    .line 63
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->textDimView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/PhotoPaintView;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoPaintView;
    .param p1, "x1"    # Z

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PhotoPaintView;->setDimVisibility(Z)V

    return-void
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/PhotoPaintView;Lorg/telegram/ui/Components/Paint/Swatch;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoPaintView;
    .param p1, "x1"    # Lorg/telegram/ui/Components/Paint/Swatch;
    .param p2, "x2"    # Z

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/PhotoPaintView;->setCurrentSwatch(Lorg/telegram/ui/Components/Paint/Swatch;Z)V

    return-void
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/PhotoPaintView;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoPaintView;

    .prologue
    .line 63
    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoPaintView;->mirrorSticker()V

    return-void
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/PhotoPaintView;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoPaintView;

    .prologue
    .line 63
    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoPaintView;->showTextSettings()V

    return-void
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/PhotoPaintView;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoPaintView;

    .prologue
    .line 63
    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoPaintView;->showBrushSettings()V

    return-void
.end method

.method private baseFontSize()I
    .locals 2

    .prologue
    .line 855
    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoPaintView;->getPaintingSize()Lorg/telegram/ui/Components/Size;

    move-result-object v0

    iget v0, v0, Lorg/telegram/ui/Components/Size;->width:F

    const/high16 v1, 0x41100000    # 9.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private baseStickerSize()Lorg/telegram/ui/Components/Size;
    .locals 6

    .prologue
    .line 826
    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoPaintView;->getPaintingSize()Lorg/telegram/ui/Components/Size;

    move-result-object v1

    iget v1, v1, Lorg/telegram/ui/Components/Size;->width:F

    float-to-double v2, v1

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-float v0, v2

    .line 827
    .local v0, "side":F
    new-instance v1, Lorg/telegram/ui/Components/Size;

    invoke-direct {v1, v0, v0}, Lorg/telegram/ui/Components/Size;-><init>(FF)V

    return-object v1
.end method

.method private buttonForBrush(IIZ)Landroid/widget/FrameLayout;
    .locals 10
    .param p1, "brush"    # I
    .param p2, "resource"    # I
    .param p3, "selected"    # Z

    .prologue
    const/4 v4, 0x0

    .line 1043
    new-instance v7, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoPaintView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v7, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1044
    .local v7, "button":Landroid/widget/FrameLayout;
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1045
    new-instance v0, Lorg/telegram/ui/Components/PhotoPaintView$18;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/PhotoPaintView$18;-><init>(Lorg/telegram/ui/Components/PhotoPaintView;I)V

    invoke-virtual {v7, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1056
    new-instance v9, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoPaintView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v9, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1057
    .local v9, "preview":Landroid/widget/ImageView;
    invoke-virtual {v9, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1058
    const/16 v0, 0xa5

    const/high16 v1, 0x42300000    # 44.0f

    const/16 v2, 0x13

    const/high16 v3, 0x42380000    # 46.0f

    const/high16 v5, 0x41000000    # 8.0f

    move v6, v4

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v7, v9, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1060
    if-eqz p3, :cond_0

    .line 1061
    new-instance v8, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoPaintView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v8, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1062
    .local v8, "check":Landroid/widget/ImageView;
    const v0, 0x7f020096

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1063
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1064
    const/16 v0, 0x32

    const/high16 v1, -0x40800000    # -1.0f

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v7, v8, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1067
    .end local v8    # "check":Landroid/widget/ImageView;
    :cond_0
    return-object v7
.end method

.method private buttonForText(ZLjava/lang/String;Z)Landroid/widget/FrameLayout;
    .locals 10
    .param p1, "stroke"    # Z
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "selected"    # Z

    .prologue
    const/4 v5, 0x1

    const/high16 v1, -0x1000000

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 1102
    new-instance v7, Lorg/telegram/ui/Components/PhotoPaintView$20;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoPaintView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v7, p0, v0}, Lorg/telegram/ui/Components/PhotoPaintView$20;-><init>(Lorg/telegram/ui/Components/PhotoPaintView;Landroid/content/Context;)V

    .line 1108
    .local v7, "button":Landroid/widget/FrameLayout;
    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1109
    new-instance v0, Lorg/telegram/ui/Components/PhotoPaintView$21;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/PhotoPaintView$21;-><init>(Lorg/telegram/ui/Components/PhotoPaintView;Z)V

    invoke-virtual {v7, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1120
    new-instance v9, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoPaintView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v9, v0}, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;-><init>(Landroid/content/Context;)V

    .line 1121
    .local v9, "textView":Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;
    invoke-virtual {v9, v2}, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->setBackgroundColor(I)V

    .line 1122
    invoke-virtual {v9, v2}, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->setEnabled(Z)V

    .line 1123
    const/high16 v0, 0x40400000    # 3.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v9, v0}, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->setStrokeWidth(F)V

    .line 1124
    if-eqz p1, :cond_1

    const/4 v0, -0x1

    :goto_0
    invoke-virtual {v9, v0}, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->setTextColor(I)V

    .line 1125
    if-eqz p1, :cond_2

    :goto_1
    invoke-virtual {v9, v1}, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->setStrokeColor(I)V

    .line 1126
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v9, v0, v2, v1, v2}, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->setPadding(IIII)V

    .line 1127
    const/high16 v0, 0x41900000    # 18.0f

    invoke-virtual {v9, v5, v0}, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->setTextSize(IF)V

    .line 1128
    const/4 v0, 0x0

    invoke-virtual {v9, v0, v5}, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 1129
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v9, v0}, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->setTag(Ljava/lang/Object;)V

    .line 1130
    invoke-virtual {v9, p2}, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->setText(Ljava/lang/CharSequence;)V

    .line 1131
    const/4 v0, -0x2

    const/high16 v1, -0x40000000    # -2.0f

    const/16 v2, 0x13

    const/high16 v3, 0x42380000    # 46.0f

    const/high16 v5, 0x41800000    # 16.0f

    move v6, v4

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v7, v9, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1133
    if-eqz p3, :cond_0

    .line 1134
    new-instance v8, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoPaintView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v8, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1135
    .local v8, "check":Landroid/widget/ImageView;
    const v0, 0x7f020096

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1136
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1137
    const/16 v0, 0x32

    const/high16 v1, -0x40800000    # -1.0f

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v7, v8, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1140
    .end local v8    # "check":Landroid/widget/ImageView;
    :cond_0
    return-object v7

    :cond_1
    move v0, v1

    .line 1124
    goto :goto_0

    :cond_2
    move v1, v2

    .line 1125
    goto :goto_1
.end method

.method private calculateStickerPosition(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/ui/Components/PhotoPaintView$StickerPosition;
    .locals 26
    .param p1, "document"    # Lorg/telegram/tgnet/TLRPC$Document;

    .prologue
    .line 1295
    const/4 v11, 0x0

    .line 1297
    .local v11, "maskCoords":Lorg/telegram/tgnet/TLRPC$TL_maskCoords;
    const/4 v4, 0x0

    .local v4, "a":I
    :goto_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v4, v0, :cond_0

    .line 1298
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 1299
    .local v7, "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    instance-of v0, v7, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker;

    move/from16 v22, v0

    if-eqz v22, :cond_2

    .line 1300
    iget-object v11, v7, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->mask_coords:Lorg/telegram/tgnet/TLRPC$TL_maskCoords;

    .line 1305
    .end local v7    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_0
    new-instance v9, Lorg/telegram/ui/Components/PhotoPaintView$StickerPosition;

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/PhotoPaintView;->centerPositionForEntity()Lorg/telegram/ui/Components/Point;

    move-result-object v22

    const/high16 v23, 0x3f400000    # 0.75f

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-direct {v9, v0, v1, v2, v3}, Lorg/telegram/ui/Components/PhotoPaintView$StickerPosition;-><init>(Lorg/telegram/ui/Components/PhotoPaintView;Lorg/telegram/ui/Components/Point;FF)V

    .line 1306
    .local v9, "defaultPosition":Lorg/telegram/ui/Components/PhotoPaintView$StickerPosition;
    if-eqz v11, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoPaintView;->faces:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    if-eqz v22, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoPaintView;->faces:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    if-nez v22, :cond_3

    .line 1333
    .end local v9    # "defaultPosition":Lorg/telegram/ui/Components/PhotoPaintView$StickerPosition;
    :cond_1
    :goto_1
    return-object v9

    .line 1297
    .restart local v7    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1309
    .end local v7    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    .restart local v9    # "defaultPosition":Lorg/telegram/ui/Components/PhotoPaintView$StickerPosition;
    :cond_3
    iget v5, v11, Lorg/telegram/tgnet/TLRPC$TL_maskCoords;->n:I

    .line 1311
    .local v5, "anchor":I
    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-direct {v0, v5, v1, v2, v11}, Lorg/telegram/ui/Components/PhotoPaintView;->getRandomFaceWithVacantAnchor(IJLorg/telegram/tgnet/TLRPC$TL_maskCoords;)Lorg/telegram/ui/Components/Paint/PhotoFace;

    move-result-object v10

    .line 1312
    .local v10, "face":Lorg/telegram/ui/Components/Paint/PhotoFace;
    if-eqz v10, :cond_1

    .line 1316
    invoke-virtual {v10, v5}, Lorg/telegram/ui/Components/Paint/PhotoFace;->getPointForAnchor(I)Lorg/telegram/ui/Components/Point;

    move-result-object v13

    .line 1317
    .local v13, "referencePoint":Lorg/telegram/ui/Components/Point;
    invoke-virtual {v10, v5}, Lorg/telegram/ui/Components/Paint/PhotoFace;->getWidthForAnchor(I)F

    move-result v14

    .line 1318
    .local v14, "referenceWidth":F
    invoke-virtual {v10}, Lorg/telegram/ui/Components/Paint/PhotoFace;->getAngle()F

    move-result v6

    .line 1319
    .local v6, "angle":F
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/PhotoPaintView;->baseStickerSize()Lorg/telegram/ui/Components/Size;

    move-result-object v8

    .line 1321
    .local v8, "baseSize":Lorg/telegram/ui/Components/Size;
    iget v0, v8, Lorg/telegram/ui/Components/Size;->width:F

    move/from16 v22, v0

    div-float v22, v14, v22

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    iget-wide v0, v11, Lorg/telegram/tgnet/TLRPC$TL_maskCoords;->zoom:D

    move-wide/from16 v24, v0

    mul-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-float v15, v0

    .line 1323
    .local v15, "scale":F
    float-to-double v0, v6

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-float v12, v0

    .line 1324
    .local v12, "radAngle":F
    const-wide v22, 0x3ff921fb54442d18L    # 1.5707963267948966

    float-to-double v0, v12

    move-wide/from16 v24, v0

    sub-double v22, v22, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sin(D)D

    move-result-wide v22

    float-to-double v0, v14

    move-wide/from16 v24, v0

    mul-double v22, v22, v24

    iget-wide v0, v11, Lorg/telegram/tgnet/TLRPC$TL_maskCoords;->x:D

    move-wide/from16 v24, v0

    mul-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-float v0, v0

    move/from16 v17, v0

    .line 1325
    .local v17, "xCompX":F
    const-wide v22, 0x3ff921fb54442d18L    # 1.5707963267948966

    float-to-double v0, v12

    move-wide/from16 v24, v0

    sub-double v22, v22, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->cos(D)D

    move-result-wide v22

    float-to-double v0, v14

    move-wide/from16 v24, v0

    mul-double v22, v22, v24

    iget-wide v0, v11, Lorg/telegram/tgnet/TLRPC$TL_maskCoords;->x:D

    move-wide/from16 v24, v0

    mul-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-float v0, v0

    move/from16 v18, v0

    .line 1327
    .local v18, "xCompY":F
    const-wide v22, 0x3ff921fb54442d18L    # 1.5707963267948966

    float-to-double v0, v12

    move-wide/from16 v24, v0

    add-double v22, v22, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->cos(D)D

    move-result-wide v22

    float-to-double v0, v14

    move-wide/from16 v24, v0

    mul-double v22, v22, v24

    iget-wide v0, v11, Lorg/telegram/tgnet/TLRPC$TL_maskCoords;->y:D

    move-wide/from16 v24, v0

    mul-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-float v0, v0

    move/from16 v20, v0

    .line 1328
    .local v20, "yCompX":F
    const-wide v22, 0x3ff921fb54442d18L    # 1.5707963267948966

    float-to-double v0, v12

    move-wide/from16 v24, v0

    add-double v22, v22, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sin(D)D

    move-result-wide v22

    float-to-double v0, v14

    move-wide/from16 v24, v0

    mul-double v22, v22, v24

    iget-wide v0, v11, Lorg/telegram/tgnet/TLRPC$TL_maskCoords;->y:D

    move-wide/from16 v24, v0

    mul-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-float v0, v0

    move/from16 v21, v0

    .line 1330
    .local v21, "yCompY":F
    iget v0, v13, Lorg/telegram/ui/Components/Point;->x:F

    move/from16 v22, v0

    add-float v22, v22, v17

    add-float v16, v22, v20

    .line 1331
    .local v16, "x":F
    iget v0, v13, Lorg/telegram/ui/Components/Point;->y:F

    move/from16 v22, v0

    add-float v22, v22, v18

    add-float v19, v22, v21

    .line 1333
    .local v19, "y":F
    new-instance v9, Lorg/telegram/ui/Components/PhotoPaintView$StickerPosition;

    .end local v9    # "defaultPosition":Lorg/telegram/ui/Components/PhotoPaintView$StickerPosition;
    new-instance v22, Lorg/telegram/ui/Components/Point;

    move-object/from16 v0, v22

    move/from16 v1, v16

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Point;-><init>(FF)V

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v9, v0, v1, v15, v6}, Lorg/telegram/ui/Components/PhotoPaintView$StickerPosition;-><init>(Lorg/telegram/ui/Components/PhotoPaintView;Lorg/telegram/ui/Components/Point;FF)V

    goto/16 :goto_1
.end method

.method private centerPositionForEntity()Lorg/telegram/ui/Components/Point;
    .locals 5

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 651
    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoPaintView;->getPaintingSize()Lorg/telegram/ui/Components/Size;

    move-result-object v0

    .line 652
    .local v0, "paintingSize":Lorg/telegram/ui/Components/Size;
    new-instance v1, Lorg/telegram/ui/Components/Point;

    iget v2, v0, Lorg/telegram/ui/Components/Size;->width:F

    div-float/2addr v2, v4

    iget v3, v0, Lorg/telegram/ui/Components/Size;->height:F

    div-float/2addr v3, v4

    invoke-direct {v1, v2, v3}, Lorg/telegram/ui/Components/Point;-><init>(FF)V

    return-object v1
.end method

.method private closeStickersView()V
    .locals 4

    .prologue
    .line 809
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->stickersView:Lorg/telegram/ui/Components/StickerMasksView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->stickersView:Lorg/telegram/ui/Components/StickerMasksView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/StickerMasksView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    .line 823
    :cond_0
    :goto_0
    return-void

    .line 812
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->pickingSticker:Z

    .line 814
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->stickersView:Lorg/telegram/ui/Components/StickerMasksView;

    const-string/jumbo v2, "alpha"

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 815
    .local v0, "a":Landroid/animation/Animator;
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 816
    new-instance v1, Lorg/telegram/ui/Components/PhotoPaintView$15;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/PhotoPaintView$15;-><init>(Lorg/telegram/ui/Components/PhotoPaintView;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 822
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_0

    .line 814
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private createSticker(Lorg/telegram/tgnet/TLRPC$Document;)V
    .locals 8
    .param p1, "sticker"    # Lorg/telegram/tgnet/TLRPC$Document;

    .prologue
    .line 840
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PhotoPaintView;->calculateStickerPosition(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/ui/Components/PhotoPaintView$StickerPosition;

    move-result-object v7

    .line 841
    .local v7, "position":Lorg/telegram/ui/Components/PhotoPaintView$StickerPosition;
    new-instance v0, Lorg/telegram/ui/Components/Paint/Views/StickerView;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoPaintView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v7}, Lorg/telegram/ui/Components/PhotoPaintView$StickerPosition;->access$1700(Lorg/telegram/ui/Components/PhotoPaintView$StickerPosition;)Lorg/telegram/ui/Components/Point;

    move-result-object v2

    invoke-static {v7}, Lorg/telegram/ui/Components/PhotoPaintView$StickerPosition;->access$1800(Lorg/telegram/ui/Components/PhotoPaintView$StickerPosition;)F

    move-result v3

    invoke-static {v7}, Lorg/telegram/ui/Components/PhotoPaintView$StickerPosition;->access$1900(Lorg/telegram/ui/Components/PhotoPaintView$StickerPosition;)F

    move-result v4

    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoPaintView;->baseStickerSize()Lorg/telegram/ui/Components/Size;

    move-result-object v5

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/Paint/Views/StickerView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/Point;FFLorg/telegram/ui/Components/Size;Lorg/telegram/tgnet/TLRPC$Document;)V

    .line 842
    .local v0, "view":Lorg/telegram/ui/Components/Paint/Views/StickerView;
    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/Paint/Views/StickerView;->setDelegate(Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;)V

    .line 843
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->addView(Landroid/view/View;)V

    .line 844
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/PhotoPaintView;->registerRemovalUndo(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    .line 845
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/PhotoPaintView;->selectEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z

    .line 846
    return-void
.end method

.method private createText()V
    .locals 10

    .prologue
    .line 859
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->colorPicker:Lorg/telegram/ui/Components/Paint/Views/ColorPicker;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->getSwatch()Lorg/telegram/ui/Components/Paint/Swatch;

    move-result-object v8

    .line 860
    .local v8, "currentSwatch":Lorg/telegram/ui/Components/Paint/Swatch;
    new-instance v9, Lorg/telegram/ui/Components/Paint/Swatch;

    const/4 v1, -0x1

    const/high16 v2, 0x3f800000    # 1.0f

    iget v3, v8, Lorg/telegram/ui/Components/Paint/Swatch;->brushWeight:F

    invoke-direct {v9, v1, v2, v3}, Lorg/telegram/ui/Components/Paint/Swatch;-><init>(IFF)V

    .line 861
    .local v9, "whiteSwatch":Lorg/telegram/ui/Components/Paint/Swatch;
    new-instance v7, Lorg/telegram/ui/Components/Paint/Swatch;

    const/high16 v1, -0x1000000

    const v2, 0x3f59999a    # 0.85f

    iget v3, v8, Lorg/telegram/ui/Components/Paint/Swatch;->brushWeight:F

    invoke-direct {v7, v1, v2, v3}, Lorg/telegram/ui/Components/Paint/Swatch;-><init>(IFF)V

    .line 862
    .local v7, "blackSwatch":Lorg/telegram/ui/Components/Paint/Swatch;
    iget-boolean v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->selectedStroke:Z

    if-eqz v1, :cond_0

    .end local v7    # "blackSwatch":Lorg/telegram/ui/Components/Paint/Swatch;
    :goto_0
    const/4 v1, 0x1

    invoke-direct {p0, v7, v1}, Lorg/telegram/ui/Components/PhotoPaintView;->setCurrentSwatch(Lorg/telegram/ui/Components/Paint/Swatch;Z)V

    .line 864
    new-instance v0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoPaintView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/PhotoPaintView;->startPositionRelativeToEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Lorg/telegram/ui/Components/Point;

    move-result-object v2

    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoPaintView;->baseFontSize()I

    move-result v3

    const-string/jumbo v4, ""

    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoPaintView;->colorPicker:Lorg/telegram/ui/Components/Paint/Views/ColorPicker;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->getSwatch()Lorg/telegram/ui/Components/Paint/Swatch;

    move-result-object v5

    iget-boolean v6, p0, Lorg/telegram/ui/Components/PhotoPaintView;->selectedStroke:Z

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/Point;ILjava/lang/String;Lorg/telegram/ui/Components/Paint/Swatch;Z)V

    .line 865
    .local v0, "view":Lorg/telegram/ui/Components/Paint/Views/TextPaintView;
    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->setDelegate(Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;)V

    .line 866
    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoPaintView;->getPaintingSize()Lorg/telegram/ui/Components/Size;

    move-result-object v1

    iget v1, v1, Lorg/telegram/ui/Components/Size;->width:F

    const/high16 v2, 0x41a00000    # 20.0f

    sub-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->setMaxWidth(I)V

    .line 867
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    const/4 v2, -0x2

    const/high16 v3, -0x40000000    # -2.0f

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 869
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/PhotoPaintView;->registerRemovalUndo(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    .line 870
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/PhotoPaintView;->selectEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z

    .line 871
    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoPaintView;->editSelectedTextEntity()V

    .line 872
    return-void

    .end local v0    # "view":Lorg/telegram/ui/Components/Paint/Views/TextPaintView;
    .restart local v7    # "blackSwatch":Lorg/telegram/ui/Components/Paint/Swatch;
    :cond_0
    move-object v7, v9

    .line 862
    goto :goto_0
.end method

.method private detectFaces()V
    .locals 2

    .prologue
    .line 1250
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->queue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/ui/Components/PhotoPaintView$26;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/PhotoPaintView$26;-><init>(Lorg/telegram/ui/Components/PhotoPaintView;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 1292
    return-void
.end method

.method private duplicateSelectedEntity()V
    .locals 7

    .prologue
    .line 754
    iget-object v4, p0, Lorg/telegram/ui/Components/PhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    if-nez v4, :cond_0

    .line 777
    :goto_0
    return-void

    .line 757
    :cond_0
    const/4 v0, 0x0

    .line 758
    .local v0, "entityView":Lorg/telegram/ui/Components/Paint/Views/EntityView;
    iget-object v4, p0, Lorg/telegram/ui/Components/PhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-direct {p0, v4}, Lorg/telegram/ui/Components/PhotoPaintView;->startPositionRelativeToEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Lorg/telegram/ui/Components/Point;

    move-result-object v3

    .line 760
    .local v3, "position":Lorg/telegram/ui/Components/Point;
    iget-object v4, p0, Lorg/telegram/ui/Components/PhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    instance-of v4, v4, Lorg/telegram/ui/Components/Paint/Views/StickerView;

    if-eqz v4, :cond_2

    .line 761
    new-instance v1, Lorg/telegram/ui/Components/Paint/Views/StickerView;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoPaintView;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v4, p0, Lorg/telegram/ui/Components/PhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    check-cast v4, Lorg/telegram/ui/Components/Paint/Views/StickerView;

    invoke-direct {v1, v5, v4, v3}, Lorg/telegram/ui/Components/Paint/Views/StickerView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/Paint/Views/StickerView;Lorg/telegram/ui/Components/Point;)V

    .line 762
    .local v1, "newStickerView":Lorg/telegram/ui/Components/Paint/Views/StickerView;
    invoke-virtual {v1, p0}, Lorg/telegram/ui/Components/Paint/Views/StickerView;->setDelegate(Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;)V

    .line 763
    iget-object v4, p0, Lorg/telegram/ui/Components/PhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v4, v1}, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->addView(Landroid/view/View;)V

    .line 764
    move-object v0, v1

    .line 773
    .end local v1    # "newStickerView":Lorg/telegram/ui/Components/Paint/Views/StickerView;
    :cond_1
    :goto_1
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/PhotoPaintView;->registerRemovalUndo(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    .line 774
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/PhotoPaintView;->selectEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z

    .line 776
    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoPaintView;->updateSettingsButton()V

    goto :goto_0

    .line 765
    :cond_2
    iget-object v4, p0, Lorg/telegram/ui/Components/PhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    instance-of v4, v4, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    if-eqz v4, :cond_1

    .line 766
    new-instance v2, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoPaintView;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v4, p0, Lorg/telegram/ui/Components/PhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    check-cast v4, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    invoke-direct {v2, v5, v4, v3}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/Paint/Views/TextPaintView;Lorg/telegram/ui/Components/Point;)V

    .line 767
    .local v2, "newTextPaintView":Lorg/telegram/ui/Components/Paint/Views/TextPaintView;
    invoke-virtual {v2, p0}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->setDelegate(Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;)V

    .line 768
    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoPaintView;->getPaintingSize()Lorg/telegram/ui/Components/Size;

    move-result-object v4

    iget v4, v4, Lorg/telegram/ui/Components/Size;->width:F

    const/high16 v5, 0x41a00000    # 20.0f

    sub-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->setMaxWidth(I)V

    .line 769
    iget-object v4, p0, Lorg/telegram/ui/Components/PhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    const/4 v5, -0x2

    const/high16 v6, -0x40000000    # -2.0f

    invoke-static {v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 770
    move-object v0, v2

    goto :goto_1
.end method

.method private editSelectedTextEntity()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 875
    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    instance-of v2, v2, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lorg/telegram/ui/Components/PhotoPaintView;->editingText:Z

    if-eqz v2, :cond_1

    .line 900
    :cond_0
    :goto_0
    return-void

    .line 879
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoPaintView;->curtainView:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 881
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    check-cast v1, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    .line 882
    .local v1, "textPaintView":Lorg/telegram/ui/Components/Paint/Views/TextPaintView;
    invoke-virtual {v1}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getText()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/Components/PhotoPaintView;->initialText:Ljava/lang/String;

    .line 883
    iput-boolean v5, p0, Lorg/telegram/ui/Components/PhotoPaintView;->editingText:Z

    .line 885
    invoke-virtual {v1}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getPosition()Lorg/telegram/ui/Components/Point;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/Components/PhotoPaintView;->editedTextPosition:Lorg/telegram/ui/Components/Point;

    .line 886
    invoke-virtual {v1}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getRotation()F

    move-result v2

    iput v2, p0, Lorg/telegram/ui/Components/PhotoPaintView;->editedTextRotation:F

    .line 887
    invoke-virtual {v1}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getScale()F

    move-result v2

    iput v2, p0, Lorg/telegram/ui/Components/PhotoPaintView;->editedTextScale:F

    .line 889
    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoPaintView;->centerPositionForEntity()Lorg/telegram/ui/Components/Point;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->setPosition(Lorg/telegram/ui/Components/Point;)V

    .line 890
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->setRotation(F)V

    .line 891
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->setScale(F)V

    .line 893
    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoPaintView;->toolsView:Landroid/widget/FrameLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 895
    invoke-direct {p0, v5, v1}, Lorg/telegram/ui/Components/PhotoPaintView;->setTextDimVisibility(ZLorg/telegram/ui/Components/Paint/Views/EntityView;)V

    .line 896
    invoke-virtual {v1}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->beginEditing()V

    .line 898
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 899
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v1}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getFocusedView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInputFromWindow(Landroid/os/IBinder;II)V

    goto :goto_0
.end method

.method private getFrameRotation()I
    .locals 1

    .prologue
    .line 1230
    iget v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->orientation:I

    sparse-switch v0, :sswitch_data_0

    .line 1244
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1232
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1236
    :sswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 1240
    :sswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 1230
    nop

    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_2
    .end sparse-switch
.end method

.method private getPaintingSize()Lorg/telegram/ui/Components/Size;
    .locals 7

    .prologue
    const/high16 v6, 0x44a00000    # 1280.0f

    .line 333
    iget-object v3, p0, Lorg/telegram/ui/Components/PhotoPaintView;->paintingSize:Lorg/telegram/ui/Components/Size;

    if-eqz v3, :cond_0

    .line 334
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->paintingSize:Lorg/telegram/ui/Components/Size;

    .line 347
    :goto_0
    return-object v1

    .line 336
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoPaintView;->isSidewardOrientation()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/Components/PhotoPaintView;->bitmapToEdit:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v2, v3

    .line 337
    .local v2, "width":F
    :goto_1
    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoPaintView;->isSidewardOrientation()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/Components/PhotoPaintView;->bitmapToEdit:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v0, v3

    .line 339
    .local v0, "height":F
    :goto_2
    new-instance v1, Lorg/telegram/ui/Components/Size;

    invoke-direct {v1, v2, v0}, Lorg/telegram/ui/Components/Size;-><init>(FF)V

    .line 340
    .local v1, "size":Lorg/telegram/ui/Components/Size;
    iput v6, v1, Lorg/telegram/ui/Components/Size;->width:F

    .line 341
    iget v3, v1, Lorg/telegram/ui/Components/Size;->width:F

    mul-float/2addr v3, v0

    div-float/2addr v3, v2

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-float v3, v4

    iput v3, v1, Lorg/telegram/ui/Components/Size;->height:F

    .line 342
    iget v3, v1, Lorg/telegram/ui/Components/Size;->height:F

    cmpl-float v3, v3, v6

    if-lez v3, :cond_1

    .line 343
    iput v6, v1, Lorg/telegram/ui/Components/Size;->height:F

    .line 344
    iget v3, v1, Lorg/telegram/ui/Components/Size;->height:F

    mul-float/2addr v3, v2

    div-float/2addr v3, v0

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-float v3, v4

    iput v3, v1, Lorg/telegram/ui/Components/Size;->width:F

    .line 346
    :cond_1
    iput-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->paintingSize:Lorg/telegram/ui/Components/Size;

    goto :goto_0

    .line 336
    .end local v0    # "height":F
    .end local v1    # "size":Lorg/telegram/ui/Components/Size;
    .end local v2    # "width":F
    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/Components/PhotoPaintView;->bitmapToEdit:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v2, v3

    goto :goto_1

    .line 337
    .restart local v2    # "width":F
    :cond_3
    iget-object v3, p0, Lorg/telegram/ui/Components/PhotoPaintView;->bitmapToEdit:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v0, v3

    goto :goto_2
.end method

.method private getRandomFaceWithVacantAnchor(IJLorg/telegram/tgnet/TLRPC$TL_maskCoords;)Lorg/telegram/ui/Components/Paint/PhotoFace;
    .locals 12
    .param p1, "anchor"    # I
    .param p2, "documentId"    # J
    .param p4, "maskCoords"    # Lorg/telegram/tgnet/TLRPC$TL_maskCoords;

    .prologue
    .line 1338
    if-ltz p1, :cond_0

    const/4 v1, 0x3

    if-gt p1, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->faces:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1339
    :cond_0
    const/4 v2, 0x0

    .line 1354
    :cond_1
    :goto_0
    return-object v2

    .line 1342
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->faces:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1343
    .local v0, "count":I
    sget-object v1, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v8

    .line 1344
    .local v8, "randomIndex":I
    move v9, v0

    .line 1346
    .local v9, "remaining":I
    const/4 v10, 0x0

    .line 1347
    .local v10, "selectedFace":Lorg/telegram/ui/Components/Paint/PhotoFace;
    move v7, v8

    .local v7, "i":I
    :goto_1
    if-lez v9, :cond_3

    .line 1348
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->faces:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/Paint/PhotoFace;

    .local v2, "face":Lorg/telegram/ui/Components/Paint/PhotoFace;
    move-object v1, p0

    move v3, p1

    move-wide v4, p2

    move-object/from16 v6, p4

    .line 1349
    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Components/PhotoPaintView;->isFaceAnchorOccupied(Lorg/telegram/ui/Components/Paint/PhotoFace;IJLorg/telegram/tgnet/TLRPC$TL_maskCoords;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1347
    add-int/lit8 v1, v7, 0x1

    rem-int v7, v1, v0

    add-int/lit8 v9, v9, -0x1

    goto :goto_1

    .end local v2    # "face":Lorg/telegram/ui/Components/Paint/PhotoFace;
    :cond_3
    move-object v2, v10

    .line 1354
    goto :goto_0
.end method

.method private hasChanges()Z
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->undoStore:Lorg/telegram/ui/Components/Paint/UndoStore;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/UndoStore;->canUndo()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->entitiesCount()I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isFaceAnchorOccupied(Lorg/telegram/ui/Components/Paint/PhotoFace;IJLorg/telegram/tgnet/TLRPC$TL_maskCoords;)Z
    .locals 13
    .param p1, "face"    # Lorg/telegram/ui/Components/Paint/PhotoFace;
    .param p2, "anchor"    # I
    .param p3, "documentId"    # J
    .param p5, "maskCoords"    # Lorg/telegram/tgnet/TLRPC$TL_maskCoords;

    .prologue
    .line 1358
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/Paint/PhotoFace;->getPointForAnchor(I)Lorg/telegram/ui/Components/Point;

    move-result-object v0

    .line 1359
    .local v0, "anchorPoint":Lorg/telegram/ui/Components/Point;
    if-nez v0, :cond_0

    .line 1360
    const/4 v7, 0x1

    .line 1383
    :goto_0
    return v7

    .line 1363
    :cond_0
    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Lorg/telegram/ui/Components/Paint/PhotoFace;->getWidthForAnchor(I)F

    move-result v7

    const v8, 0x3f8ccccd    # 1.1f

    mul-float v4, v7, v8

    .line 1365
    .local v4, "minDistance":F
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_1
    iget-object v7, p0, Lorg/telegram/ui/Components/PhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v7}, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->getChildCount()I

    move-result v7

    if-ge v2, v7, :cond_4

    .line 1366
    iget-object v7, p0, Lorg/telegram/ui/Components/PhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v7, v2}, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1367
    .local v6, "view":Landroid/view/View;
    instance-of v7, v6, Lorg/telegram/ui/Components/Paint/Views/StickerView;

    if-nez v7, :cond_2

    .line 1365
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move-object v5, v6

    .line 1371
    check-cast v5, Lorg/telegram/ui/Components/Paint/Views/StickerView;

    .line 1372
    .local v5, "stickerView":Lorg/telegram/ui/Components/Paint/Views/StickerView;
    invoke-virtual {v5}, Lorg/telegram/ui/Components/Paint/Views/StickerView;->getAnchor()I

    move-result v7

    if-ne v7, p2, :cond_1

    .line 1376
    invoke-virtual {v5}, Lorg/telegram/ui/Components/Paint/Views/StickerView;->getPosition()Lorg/telegram/ui/Components/Point;

    move-result-object v3

    .line 1377
    .local v3, "location":Lorg/telegram/ui/Components/Point;
    iget v7, v3, Lorg/telegram/ui/Components/Point;->x:F

    iget v8, v0, Lorg/telegram/ui/Components/Point;->x:F

    sub-float/2addr v7, v8

    float-to-double v8, v7

    iget v7, v3, Lorg/telegram/ui/Components/Point;->y:F

    iget v10, v0, Lorg/telegram/ui/Components/Point;->y:F

    sub-float/2addr v7, v10

    float-to-double v10, v7

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v8

    double-to-float v1, v8

    .line 1378
    .local v1, "distance":F
    invoke-virtual {v5}, Lorg/telegram/ui/Components/Paint/Views/StickerView;->getSticker()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v7

    iget-wide v8, v7, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    cmp-long v7, p3, v8

    if-eqz v7, :cond_3

    iget-object v7, p0, Lorg/telegram/ui/Components/PhotoPaintView;->faces:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_1

    :cond_3
    cmpg-float v7, v1, v4

    if-gez v7, :cond_1

    .line 1379
    const/4 v7, 0x1

    goto :goto_0

    .line 1383
    .end local v1    # "distance":F
    .end local v3    # "location":Lorg/telegram/ui/Components/Point;
    .end local v5    # "stickerView":Lorg/telegram/ui/Components/Paint/Views/StickerView;
    .end local v6    # "view":Landroid/view/View;
    :cond_4
    const/4 v7, 0x0

    goto :goto_0
.end method

.method private isSidewardOrientation()Z
    .locals 2

    .prologue
    .line 351
    iget v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->orientation:I

    rem-int/lit16 v0, v0, 0x168

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->orientation:I

    rem-int/lit16 v0, v0, 0x168

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private mirrorSticker()V
    .locals 1

    .prologue
    .line 849
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    instance-of v0, v0, Lorg/telegram/ui/Components/Paint/Views/StickerView;

    if-eqz v0, :cond_0

    .line 850
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    check-cast v0, Lorg/telegram/ui/Components/Paint/Views/StickerView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/StickerView;->mirror()V

    .line 852
    :cond_0
    return-void
.end method

.method private openStickersView()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 780
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->stickersView:Lorg/telegram/ui/Components/StickerMasksView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->stickersView:Lorg/telegram/ui/Components/StickerMasksView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/StickerMasksView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 806
    :goto_0
    return-void

    .line 783
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->pickingSticker:Z

    .line 785
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->stickersView:Lorg/telegram/ui/Components/StickerMasksView;

    if-nez v1, :cond_1

    .line 786
    new-instance v1, Lorg/telegram/ui/Components/StickerMasksView;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoPaintView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/telegram/ui/Components/StickerMasksView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->stickersView:Lorg/telegram/ui/Components/StickerMasksView;

    .line 787
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->stickersView:Lorg/telegram/ui/Components/StickerMasksView;

    new-instance v2, Lorg/telegram/ui/Components/PhotoPaintView$14;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/PhotoPaintView$14;-><init>(Lorg/telegram/ui/Components/PhotoPaintView;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/StickerMasksView;->setListener(Lorg/telegram/ui/Components/StickerMasksView$Listener;)V

    .line 799
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->stickersView:Lorg/telegram/ui/Components/StickerMasksView;

    const/16 v2, 0x33

    invoke-static {v3, v3, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/telegram/ui/Components/PhotoPaintView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 802
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->stickersView:Lorg/telegram/ui/Components/StickerMasksView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/StickerMasksView;->setVisibility(I)V

    .line 803
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->stickersView:Lorg/telegram/ui/Components/StickerMasksView;

    const-string/jumbo v2, "alpha"

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 804
    .local v0, "a":Landroid/animation/Animator;
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 805
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_0

    .line 803
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private registerRemovalUndo(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V
    .locals 3
    .param p1, "entityView"    # Lorg/telegram/ui/Components/Paint/Views/EntityView;

    .prologue
    .line 831
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->undoStore:Lorg/telegram/ui/Components/Paint/UndoStore;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getUUID()Ljava/util/UUID;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/PhotoPaintView$16;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/Components/PhotoPaintView$16;-><init>(Lorg/telegram/ui/Components/PhotoPaintView;Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/Paint/UndoStore;->registerUndo(Ljava/util/UUID;Ljava/lang/Runnable;)V

    .line 837
    return-void
.end method

.method private removeEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V
    .locals 2
    .param p1, "entityView"    # Lorg/telegram/ui/Components/Paint/Views/EntityView;

    .prologue
    .line 741
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    if-ne p1, v0, :cond_1

    .line 742
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->deselect()V

    .line 743
    iget-boolean v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->editingText:Z

    if-eqz v0, :cond_0

    .line 744
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/PhotoPaintView;->closeTextEnter(Z)V

    .line 746
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    .line 747
    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoPaintView;->updateSettingsButton()V

    .line 749
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->removeView(Landroid/view/View;)V

    .line 750
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->undoStore:Lorg/telegram/ui/Components/Paint/UndoStore;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/UndoStore;->unregisterUndo(Ljava/util/UUID;)V

    .line 751
    return-void
.end method

.method private selectEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z
    .locals 4
    .param p1, "entityView"    # Lorg/telegram/ui/Components/Paint/Views/EntityView;

    .prologue
    const/4 v2, 0x1

    .line 709
    const/4 v0, 0x0

    .line 711
    .local v0, "changed":Z
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    if-eqz v1, :cond_2

    .line 712
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    if-ne v1, p1, :cond_1

    .line 713
    iget-boolean v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->editingText:Z

    if-nez v1, :cond_0

    .line 714
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/PhotoPaintView;->showMenuForEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    :cond_0
    move v1, v2

    .line 737
    :goto_0
    return v1

    .line 717
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->deselect()V

    .line 719
    const/4 v0, 0x1

    .line 722
    :cond_2
    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    .line 724
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    if-eqz v1, :cond_4

    .line 725
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    iget-object v3, p0, Lorg/telegram/ui/Components/PhotoPaintView;->selectionContainerView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->select(Landroid/view/ViewGroup;)V

    .line 726
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    iget-object v3, p0, Lorg/telegram/ui/Components/PhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->bringViewToFront(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    .line 728
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    instance-of v1, v1, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    if-eqz v1, :cond_3

    .line 729
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    check-cast v1, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getSwatch()Lorg/telegram/ui/Components/Paint/Swatch;

    move-result-object v1

    invoke-direct {p0, v1, v2}, Lorg/telegram/ui/Components/PhotoPaintView;->setCurrentSwatch(Lorg/telegram/ui/Components/Paint/Swatch;Z)V

    .line 732
    :cond_3
    const/4 v0, 0x1

    .line 735
    :cond_4
    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoPaintView;->updateSettingsButton()V

    move v1, v0

    .line 737
    goto :goto_0
.end method

.method private setBrush(I)V
    .locals 2
    .param p1, "brush"    # I

    .prologue
    .line 942
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->brushes:[Lorg/telegram/ui/Components/Paint/Brush;

    iput p1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->currentBrush:I

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/RenderView;->setBrush(Lorg/telegram/ui/Components/Paint/Brush;)V

    .line 943
    return-void
.end method

.method private setCurrentSwatch(Lorg/telegram/ui/Components/Paint/Swatch;Z)V
    .locals 2
    .param p1, "swatch"    # Lorg/telegram/ui/Components/Paint/Swatch;
    .param p2, "updateInterface"    # Z

    .prologue
    .line 480
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    iget v1, p1, Lorg/telegram/ui/Components/Paint/Swatch;->color:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/RenderView;->setColor(I)V

    .line 481
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    iget v1, p1, Lorg/telegram/ui/Components/Paint/Swatch;->brushWeight:F

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/RenderView;->setBrushSize(F)V

    .line 483
    if-eqz p2, :cond_0

    .line 484
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->colorPicker:Lorg/telegram/ui/Components/Paint/Views/ColorPicker;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->setSwatch(Lorg/telegram/ui/Components/Paint/Swatch;)V

    .line 487
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    instance-of v0, v0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    if-eqz v0, :cond_1

    .line 488
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    check-cast v0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->setSwatch(Lorg/telegram/ui/Components/Paint/Swatch;)V

    .line 490
    :cond_1
    return-void
.end method

.method private setDimVisibility(Z)V
    .locals 4
    .param p1, "visible"    # Z

    .prologue
    const/4 v3, 0x2

    .line 494
    if-eqz p1, :cond_0

    .line 495
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->dimView:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 496
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->dimView:Landroid/widget/FrameLayout;

    const-string/jumbo v2, "alpha"

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 500
    .local v0, "animator":Landroid/animation/Animator;
    :goto_0
    new-instance v1, Lorg/telegram/ui/Components/PhotoPaintView$12;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/PhotoPaintView$12;-><init>(Lorg/telegram/ui/Components/PhotoPaintView;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 508
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 509
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 510
    return-void

    .line 498
    .end local v0    # "animator":Landroid/animation/Animator;
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->dimView:Landroid/widget/FrameLayout;

    const-string/jumbo v2, "alpha"

    new-array v3, v3, [F

    fill-array-data v3, :array_1

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .restart local v0    # "animator":Landroid/animation/Animator;
    goto :goto_0

    .line 496
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 498
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private setStroke(Z)V
    .locals 7
    .param p1, "stroke"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    const/high16 v4, -0x1000000

    .line 946
    iput-boolean p1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->selectedStroke:Z

    .line 947
    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    instance-of v2, v2, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    if-eqz v2, :cond_1

    .line 948
    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoPaintView;->colorPicker:Lorg/telegram/ui/Components/Paint/Views/ColorPicker;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->getSwatch()Lorg/telegram/ui/Components/Paint/Swatch;

    move-result-object v1

    .line 949
    .local v1, "currentSwatch":Lorg/telegram/ui/Components/Paint/Swatch;
    if-eqz p1, :cond_2

    iget v2, v1, Lorg/telegram/ui/Components/Paint/Swatch;->color:I

    if-ne v2, v5, :cond_2

    .line 950
    new-instance v0, Lorg/telegram/ui/Components/Paint/Swatch;

    const v2, 0x3f59999a    # 0.85f

    iget v3, v1, Lorg/telegram/ui/Components/Paint/Swatch;->brushWeight:F

    invoke-direct {v0, v4, v2, v3}, Lorg/telegram/ui/Components/Paint/Swatch;-><init>(IFF)V

    .line 951
    .local v0, "blackSwatch":Lorg/telegram/ui/Components/Paint/Swatch;
    invoke-direct {p0, v0, v6}, Lorg/telegram/ui/Components/PhotoPaintView;->setCurrentSwatch(Lorg/telegram/ui/Components/Paint/Swatch;Z)V

    .line 956
    .end local v0    # "blackSwatch":Lorg/telegram/ui/Components/Paint/Swatch;
    :cond_0
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    check-cast v2, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    invoke-virtual {v2, p1}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->setStroke(Z)V

    .line 958
    .end local v1    # "currentSwatch":Lorg/telegram/ui/Components/Paint/Swatch;
    :cond_1
    return-void

    .line 952
    .restart local v1    # "currentSwatch":Lorg/telegram/ui/Components/Paint/Swatch;
    :cond_2
    if-nez p1, :cond_0

    iget v2, v1, Lorg/telegram/ui/Components/Paint/Swatch;->color:I

    if-ne v2, v4, :cond_0

    .line 953
    new-instance v0, Lorg/telegram/ui/Components/Paint/Swatch;

    const/high16 v2, 0x3f800000    # 1.0f

    iget v3, v1, Lorg/telegram/ui/Components/Paint/Swatch;->brushWeight:F

    invoke-direct {v0, v5, v2, v3}, Lorg/telegram/ui/Components/Paint/Swatch;-><init>(IFF)V

    .line 954
    .restart local v0    # "blackSwatch":Lorg/telegram/ui/Components/Paint/Swatch;
    invoke-direct {p0, v0, v6}, Lorg/telegram/ui/Components/PhotoPaintView;->setCurrentSwatch(Lorg/telegram/ui/Components/Paint/Swatch;Z)V

    goto :goto_0
.end method

.method private setTextDimVisibility(ZLorg/telegram/ui/Components/Paint/Views/EntityView;)V
    .locals 6
    .param p1, "visible"    # Z
    .param p2, "view"    # Lorg/telegram/ui/Components/Paint/Views/EntityView;

    .prologue
    const/4 v5, 0x2

    const/4 v3, 0x0

    .line 515
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 516
    invoke-virtual {p2}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 517
    .local v1, "parent":Landroid/view/ViewGroup;
    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoPaintView;->textDimView:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 518
    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoPaintView;->textDimView:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    iget-object v4, p0, Lorg/telegram/ui/Components/PhotoPaintView;->textDimView:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->removeView(Landroid/view/View;)V

    .line 520
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoPaintView;->textDimView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, p2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v4

    invoke-virtual {v1, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 523
    .end local v1    # "parent":Landroid/view/ViewGroup;
    :cond_1
    if-nez p1, :cond_2

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {p2, v2}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->setSelectionVisibility(Z)V

    .line 525
    if-eqz p1, :cond_3

    .line 526
    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoPaintView;->textDimView:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 527
    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoPaintView;->textDimView:Landroid/widget/FrameLayout;

    const-string/jumbo v3, "alpha"

    new-array v4, v5, [F

    fill-array-data v4, :array_0

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 531
    .local v0, "animator":Landroid/animation/Animator;
    :goto_1
    new-instance v2, Lorg/telegram/ui/Components/PhotoPaintView$13;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/Components/PhotoPaintView$13;-><init>(Lorg/telegram/ui/Components/PhotoPaintView;Z)V

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 542
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 543
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 544
    return-void

    .end local v0    # "animator":Landroid/animation/Animator;
    :cond_2
    move v2, v3

    .line 523
    goto :goto_0

    .line 529
    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoPaintView;->textDimView:Landroid/widget/FrameLayout;

    const-string/jumbo v3, "alpha"

    new-array v4, v5, [F

    fill-array-data v4, :array_1

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .restart local v0    # "animator":Landroid/animation/Animator;
    goto :goto_1

    .line 527
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 529
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private showBrushSettings()V
    .locals 6

    .prologue
    .line 1071
    new-instance v1, Lorg/telegram/ui/Components/PhotoPaintView$19;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/PhotoPaintView$19;-><init>(Lorg/telegram/ui/Components/PhotoPaintView;)V

    const/16 v3, 0x55

    const/4 v4, 0x0

    const/high16 v0, 0x42400000    # 48.0f

    .line 1098
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    move-object v0, p0

    move-object v2, p0

    .line 1071
    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/PhotoPaintView;->showPopup(Ljava/lang/Runnable;Landroid/view/View;III)V

    .line 1099
    return-void
.end method

.method private showMenuForEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V
    .locals 6
    .param p1, "entityView"    # Lorg/telegram/ui/Components/Paint/Views/EntityView;

    .prologue
    .line 961
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getPosition()Lorg/telegram/ui/Components/Point;

    move-result-object v0

    iget v0, v0, Lorg/telegram/ui/Components/Point;->x:F

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->getScaleX()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v4, v0

    .line 962
    .local v4, "x":I
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getPosition()Lorg/telegram/ui/Components/Point;

    move-result-object v0

    iget v0, v0, Lorg/telegram/ui/Components/Point;->y:F

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getScale()F

    move-result v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->getScaleY()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    const/high16 v1, 0x42000000    # 32.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int v5, v0, v1

    .line 964
    .local v5, "y":I
    new-instance v1, Lorg/telegram/ui/Components/PhotoPaintView$17;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/PhotoPaintView$17;-><init>(Lorg/telegram/ui/Components/PhotoPaintView;Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    const/16 v3, 0x11

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/PhotoPaintView;->showPopup(Ljava/lang/Runnable;Landroid/view/View;III)V

    .line 1040
    return-void
.end method

.method private showPopup(Ljava/lang/Runnable;Landroid/view/View;III)V
    .locals 7
    .param p1, "setupRunnable"    # Ljava/lang/Runnable;
    .param p2, "parent"    # Landroid/view/View;
    .param p3, "gravity"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I

    .prologue
    const/4 v6, -0x2

    const/high16 v5, -0x80000000

    const/high16 v4, 0x447a0000    # 1000.0f

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1167
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1168
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    .line 1227
    :goto_0
    return-void

    .line 1172
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    if-nez v0, :cond_1

    .line 1173
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->popupRect:Landroid/graphics/Rect;

    .line 1174
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoPaintView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    .line 1175
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setAnimationEnabled(Z)V

    .line 1176
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    new-instance v1, Lorg/telegram/ui/Components/PhotoPaintView$23;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/PhotoPaintView$23;-><init>(Lorg/telegram/ui/Components/PhotoPaintView;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1190
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    new-instance v1, Lorg/telegram/ui/Components/PhotoPaintView$24;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/PhotoPaintView$24;-><init>(Lorg/telegram/ui/Components/PhotoPaintView;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setDispatchKeyEventListener(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$OnDispatchKeyEventListener;)V

    .line 1198
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setShowedFromBotton(Z)V

    .line 1201
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->removeInnerViews()V

    .line 1202
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 1204
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-nez v0, :cond_2

    .line 1205
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-direct {v0, v1, v6, v6}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    .line 1206
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->setAnimationEnabled(Z)V

    .line 1207
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    const v1, 0x7f090013

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->setAnimationStyle(I)V

    .line 1208
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->setOutsideTouchable(Z)V

    .line 1209
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->setClippingEnabled(Z)V

    .line 1210
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->setInputMethodMode(I)V

    .line 1211
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->setSoftInputMode(I)V

    .line 1212
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 1213
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    new-instance v1, Lorg/telegram/ui/Components/PhotoPaintView$25;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/PhotoPaintView$25;-><init>(Lorg/telegram/ui/Components/PhotoPaintView;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 1221
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->measure(II)V

    .line 1223
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->setFocusable(Z)V

    .line 1225
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v0, p2, p3, p4, p5}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 1226
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->startAnimation()V

    goto/16 :goto_0
.end method

.method private showTextSettings()V
    .locals 6

    .prologue
    .line 1144
    new-instance v1, Lorg/telegram/ui/Components/PhotoPaintView$22;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/PhotoPaintView$22;-><init>(Lorg/telegram/ui/Components/PhotoPaintView;)V

    const/16 v3, 0x55

    const/4 v4, 0x0

    const/high16 v0, 0x42400000    # 48.0f

    .line 1163
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    move-object v0, p0

    move-object v2, p0

    .line 1144
    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/PhotoPaintView;->showPopup(Ljava/lang/Runnable;Landroid/view/View;III)V

    .line 1164
    return-void
.end method

.method private startPositionRelativeToEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Lorg/telegram/ui/Components/Point;
    .locals 18
    .param p1, "entityView"    # Lorg/telegram/ui/Components/Paint/Views/EntityView;

    .prologue
    .line 656
    const/high16 v7, 0x43480000    # 200.0f

    .line 658
    .local v7, "offset":F
    if-eqz p1, :cond_1

    .line 659
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getPosition()Lorg/telegram/ui/Components/Point;

    move-result-object v8

    .line 660
    .local v8, "position":Lorg/telegram/ui/Components/Point;
    new-instance v11, Lorg/telegram/ui/Components/Point;

    iget v12, v8, Lorg/telegram/ui/Components/Point;->x:F

    const/high16 v13, 0x43480000    # 200.0f

    add-float/2addr v12, v13

    iget v13, v8, Lorg/telegram/ui/Components/Point;->y:F

    const/high16 v14, 0x43480000    # 200.0f

    add-float/2addr v13, v14

    invoke-direct {v11, v12, v13}, Lorg/telegram/ui/Components/Point;-><init>(FF)V

    move-object v8, v11

    .line 685
    .end local v8    # "position":Lorg/telegram/ui/Components/Point;
    :cond_0
    return-object v8

    .line 662
    :cond_1
    const/high16 v5, 0x42c80000    # 100.0f

    .line 663
    .local v5, "minimalDistance":F
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/PhotoPaintView;->centerPositionForEntity()Lorg/telegram/ui/Components/Point;

    move-result-object v8

    .line 666
    .restart local v8    # "position":Lorg/telegram/ui/Components/Point;
    :goto_0
    const/4 v6, 0x0

    .line 667
    .local v6, "occupied":Z
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/Components/PhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v11}, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->getChildCount()I

    move-result v11

    if-ge v3, v11, :cond_4

    .line 668
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/Components/PhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v11, v3}, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 669
    .local v10, "view":Landroid/view/View;
    instance-of v11, v10, Lorg/telegram/ui/Components/Paint/Views/EntityView;

    if-nez v11, :cond_3

    .line 667
    .end local v10    # "view":Landroid/view/View;
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 672
    .restart local v10    # "view":Landroid/view/View;
    :cond_3
    check-cast v10, Lorg/telegram/ui/Components/Paint/Views/EntityView;

    .end local v10    # "view":Landroid/view/View;
    invoke-virtual {v10}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getPosition()Lorg/telegram/ui/Components/Point;

    move-result-object v4

    .line 673
    .local v4, "location":Lorg/telegram/ui/Components/Point;
    iget v11, v4, Lorg/telegram/ui/Components/Point;->x:F

    iget v12, v8, Lorg/telegram/ui/Components/Point;->x:F

    sub-float/2addr v11, v12

    float-to-double v12, v11

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    iget v11, v4, Lorg/telegram/ui/Components/Point;->y:F

    iget v14, v8, Lorg/telegram/ui/Components/Point;->y:F

    sub-float/2addr v11, v14

    float-to-double v14, v11

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    add-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    double-to-float v2, v12

    .line 674
    .local v2, "distance":F
    const/high16 v11, 0x42c80000    # 100.0f

    cmpg-float v11, v2, v11

    if-gez v11, :cond_2

    .line 675
    const/4 v6, 0x1

    goto :goto_2

    .line 679
    .end local v2    # "distance":F
    .end local v4    # "location":Lorg/telegram/ui/Components/Point;
    :cond_4
    if-eqz v6, :cond_0

    .line 682
    new-instance v9, Lorg/telegram/ui/Components/Point;

    iget v11, v8, Lorg/telegram/ui/Components/Point;->x:F

    const/high16 v12, 0x43480000    # 200.0f

    add-float/2addr v11, v12

    iget v12, v8, Lorg/telegram/ui/Components/Point;->y:F

    const/high16 v13, 0x43480000    # 200.0f

    add-float/2addr v12, v13

    invoke-direct {v9, v11, v12}, Lorg/telegram/ui/Components/Point;-><init>(FF)V

    .end local v8    # "position":Lorg/telegram/ui/Components/Point;
    .local v9, "position":Lorg/telegram/ui/Components/Point;
    move-object v8, v9

    .line 683
    .end local v9    # "position":Lorg/telegram/ui/Components/Point;
    .restart local v8    # "position":Lorg/telegram/ui/Components/Point;
    goto :goto_0
.end method

.method private updateSettingsButton()V
    .locals 6

    .prologue
    const v5, 0x7f020169

    .line 355
    const v0, 0x7f02016a

    .line 356
    .local v0, "resource":I
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    if-eqz v1, :cond_2

    .line 357
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    instance-of v1, v1, Lorg/telegram/ui/Components/Paint/Views/StickerView;

    if-eqz v1, :cond_1

    .line 358
    const v0, 0x7f020167

    .line 362
    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->paintButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 363
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->paintButton:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 369
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->colorPicker:Lorg/telegram/ui/Components/Paint/Views/ColorPicker;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->setSettingsButtonImage(I)V

    .line 370
    return-void

    .line 359
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    instance-of v1, v1, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    if-eqz v1, :cond_0

    .line 360
    const v0, 0x7f020168

    goto :goto_0

    .line 365
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->paintButton:Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    const v3, -0xae420d

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 366
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->paintButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method


# virtual methods
.method public allowInteraction(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z
    .locals 1
    .param p1, "entityView"    # Lorg/telegram/ui/Components/Paint/Views/EntityView;

    .prologue
    .line 647
    iget-boolean v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->editingText:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public closeTextEnter(Z)V
    .locals 5
    .param p1, "apply"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 903
    iget-boolean v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->editingText:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    instance-of v1, v1, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    if-nez v1, :cond_1

    .line 939
    :cond_0
    :goto_0
    return-void

    .line 907
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    check-cast v0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    .line 909
    .local v0, "textPaintView":Lorg/telegram/ui/Components/Paint/Views/TextPaintView;
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->toolsView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 911
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getFocusedView()Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 913
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getFocusedView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    .line 914
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->endEditing()V

    .line 916
    if-nez p1, :cond_2

    .line 917
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->initialText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->setText(Ljava/lang/String;)V

    .line 920
    :cond_2
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    .line 921
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->removeView(Landroid/view/View;)V

    .line 922
    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/PhotoPaintView;->selectEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z

    .line 933
    :goto_1
    invoke-direct {p0, v2, v0}, Lorg/telegram/ui/Components/PhotoPaintView;->setTextDimVisibility(ZLorg/telegram/ui/Components/Paint/Views/EntityView;)V

    .line 935
    iput-boolean v2, p0, Lorg/telegram/ui/Components/PhotoPaintView;->editingText:Z

    .line 936
    iput-object v3, p0, Lorg/telegram/ui/Components/PhotoPaintView;->initialText:Ljava/lang/String;

    .line 938
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->curtainView:Landroid/widget/FrameLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 924
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->editedTextPosition:Lorg/telegram/ui/Components/Point;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->setPosition(Lorg/telegram/ui/Components/Point;)V

    .line 925
    iget v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->editedTextRotation:F

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->setRotation(F)V

    .line 926
    iget v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->editedTextScale:F

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->setScale(F)V

    .line 928
    iput-object v3, p0, Lorg/telegram/ui/Components/PhotoPaintView;->editedTextPosition:Lorg/telegram/ui/Components/Point;

    .line 929
    iput v4, p0, Lorg/telegram/ui/Components/PhotoPaintView;->editedTextRotation:F

    .line 930
    iput v4, p0, Lorg/telegram/ui/Components/PhotoPaintView;->editedTextScale:F

    goto :goto_1
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    .line 414
    iget-object v8, p0, Lorg/telegram/ui/Components/PhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v8}, Lorg/telegram/ui/Components/Paint/RenderView;->getResultBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 415
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_2

    iget-object v8, p0, Lorg/telegram/ui/Components/PhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v8}, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->entitiesCount()I

    move-result v8

    if-lez v8, :cond_2

    .line 416
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 418
    .local v3, "canvas":Landroid/graphics/Canvas;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    iget-object v8, p0, Lorg/telegram/ui/Components/PhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v8}, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->getChildCount()I

    move-result v8

    if-ge v6, v8, :cond_2

    .line 419
    iget-object v8, p0, Lorg/telegram/ui/Components/PhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v8, v6}, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 420
    .local v7, "v":Landroid/view/View;
    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    .line 421
    instance-of v8, v7, Lorg/telegram/ui/Components/Paint/Views/EntityView;

    if-eqz v8, :cond_0

    move-object v5, v7

    .line 422
    check-cast v5, Lorg/telegram/ui/Components/Paint/Views/EntityView;

    .line 424
    .local v5, "entity":Lorg/telegram/ui/Components/Paint/Views/EntityView;
    invoke-virtual {v5}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getPosition()Lorg/telegram/ui/Components/Point;

    move-result-object v8

    iget v8, v8, Lorg/telegram/ui/Components/Point;->x:F

    invoke-virtual {v5}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getPosition()Lorg/telegram/ui/Components/Point;

    move-result-object v9

    iget v9, v9, Lorg/telegram/ui/Components/Point;->y:F

    invoke-virtual {v3, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 425
    invoke-virtual {v7}, Landroid/view/View;->getScaleX()F

    move-result v8

    invoke-virtual {v7}, Landroid/view/View;->getScaleY()F

    move-result v9

    invoke-virtual {v3, v8, v9}, Landroid/graphics/Canvas;->scale(FF)V

    .line 426
    invoke-virtual {v7}, Landroid/view/View;->getRotation()F

    move-result v8

    invoke-virtual {v3, v8}, Landroid/graphics/Canvas;->rotate(F)V

    .line 427
    invoke-virtual {v5}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getWidth()I

    move-result v8

    neg-int v8, v8

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    invoke-virtual {v5}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getHeight()I

    move-result v9

    neg-int v9, v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    invoke-virtual {v3, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 429
    instance-of v8, v7, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    if-eqz v8, :cond_1

    .line 430
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v8

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v9

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, v10}, Lorg/telegram/messenger/Bitmaps;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 431
    .local v0, "b":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 432
    .local v2, "c":Landroid/graphics/Canvas;
    invoke-virtual {v7, v2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 433
    new-instance v8, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    invoke-direct {v8, v12, v12, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, v0, v11, v8, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 435
    const/4 v8, 0x0

    :try_start_0
    invoke-virtual {v2, v8}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 439
    :goto_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 444
    .end local v0    # "b":Landroid/graphics/Bitmap;
    .end local v2    # "c":Landroid/graphics/Canvas;
    .end local v5    # "entity":Lorg/telegram/ui/Components/Paint/Views/EntityView;
    :cond_0
    :goto_2
    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    .line 418
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 436
    .restart local v0    # "b":Landroid/graphics/Bitmap;
    .restart local v2    # "c":Landroid/graphics/Canvas;
    .restart local v5    # "entity":Lorg/telegram/ui/Components/Paint/Views/EntityView;
    :catch_0
    move-exception v4

    .line 437
    .local v4, "e":Ljava/lang/Exception;
    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 441
    .end local v0    # "b":Landroid/graphics/Bitmap;
    .end local v2    # "c":Landroid/graphics/Canvas;
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-virtual {v7, v3}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    goto :goto_2

    .line 447
    .end local v3    # "canvas":Landroid/graphics/Canvas;
    .end local v5    # "entity":Lorg/telegram/ui/Components/Paint/Views/EntityView;
    .end local v6    # "i":I
    .end local v7    # "v":Landroid/view/View;
    :cond_2
    return-object v1
.end method

.method public getCancelTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->cancelTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getColorPicker()Lorg/telegram/ui/Components/Paint/Views/ColorPicker;
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->colorPicker:Lorg/telegram/ui/Components/Paint/Views/ColorPicker;

    return-object v0
.end method

.method public getDoneTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->doneTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getMasks()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$InputDocument;",
            ">;"
        }
    .end annotation

    .prologue
    .line 690
    const/4 v5, 0x0

    .line 691
    .local v5, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$InputDocument;>;"
    iget-object v6, p0, Lorg/telegram/ui/Components/PhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->getChildCount()I

    move-result v2

    .line 692
    .local v2, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 693
    iget-object v6, p0, Lorg/telegram/ui/Components/PhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v6, v0}, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 694
    .local v1, "child":Landroid/view/View;
    instance-of v6, v1, Lorg/telegram/ui/Components/Paint/Views/StickerView;

    if-eqz v6, :cond_1

    .line 695
    check-cast v1, Lorg/telegram/ui/Components/Paint/Views/StickerView;

    .end local v1    # "child":Landroid/view/View;
    invoke-virtual {v1}, Lorg/telegram/ui/Components/Paint/Views/StickerView;->getSticker()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v3

    .line 696
    .local v3, "document":Lorg/telegram/tgnet/TLRPC$Document;
    if-nez v5, :cond_0

    .line 697
    new-instance v5, Ljava/util/ArrayList;

    .end local v5    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$InputDocument;>;"
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 699
    .restart local v5    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$InputDocument;>;"
    :cond_0
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputDocument;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputDocument;-><init>()V

    .line 700
    .local v4, "inputDocument":Lorg/telegram/tgnet/TLRPC$TL_inputDocument;
    iget-wide v6, v3, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    iput-wide v6, v4, Lorg/telegram/tgnet/TLRPC$TL_inputDocument;->id:J

    .line 701
    iget-wide v6, v3, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    iput-wide v6, v4, Lorg/telegram/tgnet/TLRPC$TL_inputDocument;->access_hash:J

    .line 702
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 692
    .end local v3    # "document":Lorg/telegram/tgnet/TLRPC$Document;
    .end local v4    # "inputDocument":Lorg/telegram/tgnet/TLRPC$TL_inputDocument;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 705
    :cond_2
    return-object v5
.end method

.method public getToolsView()Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->toolsView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public init()V
    .locals 2

    .prologue
    .line 373
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/RenderView;->setVisibility(I)V

    .line 374
    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoPaintView;->detectFaces()V

    .line 375
    return-void
.end method

.method public maybeShowDismissalAlert(Lorg/telegram/ui/PhotoViewer;Landroid/app/Activity;Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "photoViewer"    # Lorg/telegram/ui/PhotoViewer;
    .param p2, "parentActivity"    # Landroid/app/Activity;
    .param p3, "okRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 451
    iget-boolean v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->editingText:Z

    if-eqz v1, :cond_1

    .line 452
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/PhotoPaintView;->closeTextEnter(Z)V

    .line 477
    :cond_0
    :goto_0
    return-void

    .line 454
    :cond_1
    iget-boolean v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->pickingSticker:Z

    if-eqz v1, :cond_2

    .line 455
    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoPaintView;->closeStickersView()V

    goto :goto_0

    .line 459
    :cond_2
    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoPaintView;->hasChanges()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 460
    if-eqz p2, :cond_0

    .line 463
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-direct {v0, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 464
    .local v0, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string/jumbo v1, "DiscardChanges"

    const v2, 0x7f0701eb

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 465
    const-string/jumbo v1, "AppName"

    const v2, 0x7f07007a

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 466
    const-string/jumbo v1, "OK"

    const v2, 0x7f070440

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/PhotoPaintView$11;

    invoke-direct {v2, p0, p3}, Lorg/telegram/ui/Components/PhotoPaintView$11;-><init>(Lorg/telegram/ui/Components/PhotoPaintView;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 472
    const-string/jumbo v1, "Cancel"

    const v2, 0x7f0700f4

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 473
    invoke-virtual {p1, v0}, Lorg/telegram/ui/PhotoViewer;->showAlertDialog(Lorg/telegram/ui/ActionBar/AlertDialog$Builder;)V

    goto :goto_0

    .line 475
    .end local v0    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    :cond_3
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public onEntityLongClicked(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z
    .locals 1
    .param p1, "entityView"    # Lorg/telegram/ui/Components/Paint/Views/EntityView;

    .prologue
    .line 641
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PhotoPaintView;->showMenuForEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    .line 642
    const/4 v0, 0x1

    return v0
.end method

.method public onEntitySelected(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z
    .locals 1
    .param p1, "entityView"    # Lorg/telegram/ui/Components/Paint/Views/EntityView;

    .prologue
    .line 636
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PhotoPaintView;->selectEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 21
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 585
    sub-int v14, p4, p2

    .line 586
    .local v14, "width":I
    sub-int v8, p5, p3

    .line 588
    .local v8, "height":I
    sget v17, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v18, 0x15

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_3

    sget v13, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    .line 589
    .local v13, "status":I
    :goto_0
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v4

    .line 590
    .local v4, "actionBarHeight":I
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v17

    add-int v5, v17, v13

    .line 594
    .local v5, "actionBarHeight2":I
    sget-object v17, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v17, v0

    sub-int v17, v17, v4

    const/high16 v18, 0x42400000    # 48.0f

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v18

    sub-int v9, v17, v18

    .line 595
    .local v9, "maxHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoPaintView;->bitmapToEdit:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    if-eqz v17, :cond_6

    .line 596
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/PhotoPaintView;->isSidewardOrientation()Z

    move-result v17

    if-eqz v17, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoPaintView;->bitmapToEdit:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v17

    move/from16 v0, v17

    int-to-float v7, v0

    .line 597
    .local v7, "bitmapW":F
    :goto_1
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/PhotoPaintView;->isSidewardOrientation()Z

    move-result v17

    if-eqz v17, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoPaintView;->bitmapToEdit:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    move/from16 v0, v17

    int-to-float v6, v0

    .line 603
    .local v6, "bitmapH":F
    :goto_2
    int-to-float v11, v14

    .line 604
    .local v11, "renderWidth":F
    mul-float v17, v11, v6

    div-float v17, v17, v7

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->floor(D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v10, v0

    .line 605
    .local v10, "renderHeight":F
    int-to-float v0, v9

    move/from16 v17, v0

    cmpl-float v17, v10, v17

    if-lez v17, :cond_0

    .line 606
    int-to-float v10, v9

    .line 607
    mul-float v17, v10, v7

    div-float v17, v17, v6

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->floor(D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v11, v0

    .line 610
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/telegram/ui/Components/Paint/RenderView;->getMeasuredWidth()I

    move-result v17

    sub-int v17, v14, v17

    div-int/lit8 v17, v17, 0x2

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-int v15, v0

    .line 611
    .local v15, "x":I
    sub-int v17, v8, v5

    const/high16 v18, 0x42400000    # 48.0f

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v18

    sub-int v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/telegram/ui/Components/Paint/RenderView;->getMeasuredHeight()I

    move-result v18

    sub-int v17, v17, v18

    div-int/lit8 v17, v17, 0x2

    add-int v17, v17, v5

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v18

    sub-int v17, v17, v18

    const/high16 v18, 0x41000000    # 8.0f

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v18

    add-int v16, v17, v18

    .line 613
    .local v16, "y":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/telegram/ui/Components/Paint/RenderView;->getMeasuredWidth()I

    move-result v18

    add-int v18, v18, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/telegram/ui/Components/Paint/RenderView;->getMeasuredHeight()I

    move-result v19

    add-int v19, v19, v16

    move-object/from16 v0, v17

    move/from16 v1, v16

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v15, v1, v2, v3}, Lorg/telegram/ui/Components/Paint/RenderView;->layout(IIII)V

    .line 615
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoPaintView;->paintingSize:Lorg/telegram/ui/Components/Size;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lorg/telegram/ui/Components/Size;->width:F

    move/from16 v17, v0

    div-float v12, v11, v17

    .line 616
    .local v12, "scale":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->setScaleX(F)V

    .line 617
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->setScaleY(F)V

    .line 618
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->getMeasuredWidth()I

    move-result v18

    add-int v18, v18, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->getMeasuredHeight()I

    move-result v19

    add-int v19, v19, v16

    move-object/from16 v0, v17

    move/from16 v1, v16

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v15, v1, v2, v3}, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->layout(IIII)V

    .line 619
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoPaintView;->dimView:Landroid/widget/FrameLayout;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoPaintView;->dimView:Landroid/widget/FrameLayout;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoPaintView;->dimView:Landroid/widget/FrameLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v20

    add-int v20, v20, v13

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v13, v2, v3}, Landroid/widget/FrameLayout;->layout(IIII)V

    .line 620
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoPaintView;->selectionContainerView:Landroid/widget/FrameLayout;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoPaintView;->selectionContainerView:Landroid/widget/FrameLayout;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoPaintView;->selectionContainerView:Landroid/widget/FrameLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v20

    add-int v20, v20, v13

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v13, v2, v3}, Landroid/widget/FrameLayout;->layout(IIII)V

    .line 621
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoPaintView;->colorPicker:Lorg/telegram/ui/Components/Paint/Views/ColorPicker;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoPaintView;->colorPicker:Lorg/telegram/ui/Components/Paint/Views/ColorPicker;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->getMeasuredWidth()I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoPaintView;->colorPicker:Lorg/telegram/ui/Components/Paint/Views/ColorPicker;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->getMeasuredHeight()I

    move-result v20

    add-int v20, v20, v5

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v5, v2, v3}, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->layout(IIII)V

    .line 622
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoPaintView;->toolsView:Landroid/widget/FrameLayout;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoPaintView;->toolsView:Landroid/widget/FrameLayout;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v19

    sub-int v19, v8, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoPaintView;->toolsView:Landroid/widget/FrameLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v20

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3, v8}, Landroid/widget/FrameLayout;->layout(IIII)V

    .line 623
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoPaintView;->curtainView:Landroid/widget/FrameLayout;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2, v14, v9}, Landroid/widget/FrameLayout;->layout(IIII)V

    .line 624
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoPaintView;->stickersView:Lorg/telegram/ui/Components/StickerMasksView;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1

    .line 625
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoPaintView;->stickersView:Lorg/telegram/ui/Components/StickerMasksView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoPaintView;->stickersView:Lorg/telegram/ui/Components/StickerMasksView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/telegram/ui/Components/StickerMasksView;->getMeasuredWidth()I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoPaintView;->stickersView:Lorg/telegram/ui/Components/StickerMasksView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lorg/telegram/ui/Components/StickerMasksView;->getMeasuredHeight()I

    move-result v20

    add-int v20, v20, v13

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v13, v2, v3}, Lorg/telegram/ui/Components/StickerMasksView;->layout(IIII)V

    .line 628
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    .line 629
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->updateSelectionView()V

    .line 630
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->getLeft()I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoPaintView;->selectionContainerView:Landroid/widget/FrameLayout;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v19

    sub-int v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->getTop()I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoPaintView;->selectionContainerView:Landroid/widget/FrameLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/FrameLayout;->getTop()I

    move-result v20

    sub-int v19, v19, v20

    invoke-virtual/range {v17 .. v19}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->setOffset(II)V

    .line 632
    :cond_2
    return-void

    .line 588
    .end local v4    # "actionBarHeight":I
    .end local v5    # "actionBarHeight2":I
    .end local v6    # "bitmapH":F
    .end local v7    # "bitmapW":F
    .end local v9    # "maxHeight":I
    .end local v10    # "renderHeight":F
    .end local v11    # "renderWidth":F
    .end local v12    # "scale":F
    .end local v13    # "status":I
    .end local v15    # "x":I
    .end local v16    # "y":I
    :cond_3
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 596
    .restart local v4    # "actionBarHeight":I
    .restart local v5    # "actionBarHeight2":I
    .restart local v9    # "maxHeight":I
    .restart local v13    # "status":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoPaintView;->bitmapToEdit:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    move/from16 v0, v17

    int-to-float v7, v0

    goto/16 :goto_1

    .line 597
    .restart local v7    # "bitmapW":F
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoPaintView;->bitmapToEdit:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v17

    move/from16 v0, v17

    int-to-float v6, v0

    goto/16 :goto_2

    .line 599
    .end local v7    # "bitmapW":F
    :cond_6
    int-to-float v7, v14

    .line 600
    .restart local v7    # "bitmapW":F
    sub-int v17, v8, v4

    const/high16 v18, 0x42400000    # 48.0f

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v18

    sub-int v17, v17, v18

    move/from16 v0, v17

    int-to-float v6, v0

    .restart local v6    # "bitmapH":F
    goto/16 :goto_2
.end method

.method protected onMeasure(II)V
    .locals 13
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v12, 0x42400000    # 48.0f

    const/high16 v11, 0x40000000    # 2.0f

    .line 548
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    .line 549
    .local v7, "width":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 551
    .local v3, "height":I
    invoke-virtual {p0, v7, v3}, Lorg/telegram/ui/Components/PhotoPaintView;->setMeasuredDimension(II)V

    .line 555
    sget-object v8, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->y:I

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v9

    sub-int v2, v8, v9

    .line 556
    .local v2, "fullHeight":I
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    sub-int v4, v2, v8

    .line 557
    .local v4, "maxHeight":I
    iget-object v8, p0, Lorg/telegram/ui/Components/PhotoPaintView;->bitmapToEdit:Landroid/graphics/Bitmap;

    if-eqz v8, :cond_4

    .line 558
    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoPaintView;->isSidewardOrientation()Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lorg/telegram/ui/Components/PhotoPaintView;->bitmapToEdit:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v1, v8

    .line 559
    .local v1, "bitmapW":F
    :goto_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoPaintView;->isSidewardOrientation()Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lorg/telegram/ui/Components/PhotoPaintView;->bitmapToEdit:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v0, v8

    .line 565
    .local v0, "bitmapH":F
    :goto_1
    int-to-float v6, v7

    .line 566
    .local v6, "renderWidth":F
    mul-float v8, v6, v0

    div-float/2addr v8, v1

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-float v5, v8

    .line 567
    .local v5, "renderHeight":F
    int-to-float v8, v4

    cmpl-float v8, v5, v8

    if-lez v8, :cond_0

    .line 568
    int-to-float v5, v4

    .line 569
    mul-float v8, v5, v1

    div-float/2addr v8, v0

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-float v6, v8

    .line 572
    :cond_0
    iget-object v8, p0, Lorg/telegram/ui/Components/PhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    float-to-int v9, v6

    invoke-static {v9, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    float-to-int v10, v5

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lorg/telegram/ui/Components/Paint/RenderView;->measure(II)V

    .line 573
    iget-object v8, p0, Lorg/telegram/ui/Components/PhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    iget-object v9, p0, Lorg/telegram/ui/Components/PhotoPaintView;->paintingSize:Lorg/telegram/ui/Components/Size;

    iget v9, v9, Lorg/telegram/ui/Components/Size;->width:F

    float-to-int v9, v9

    invoke-static {v9, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    iget-object v10, p0, Lorg/telegram/ui/Components/PhotoPaintView;->paintingSize:Lorg/telegram/ui/Components/Size;

    iget v10, v10, Lorg/telegram/ui/Components/Size;->height:F

    float-to-int v10, v10

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->measure(II)V

    .line 574
    iget-object v8, p0, Lorg/telegram/ui/Components/PhotoPaintView;->dimView:Landroid/widget/FrameLayout;

    const/high16 v9, -0x80000000

    invoke-static {v4, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-virtual {v8, p1, v9}, Landroid/widget/FrameLayout;->measure(II)V

    .line 575
    iget-object v8, p0, Lorg/telegram/ui/Components/PhotoPaintView;->selectionContainerView:Landroid/widget/FrameLayout;

    invoke-static {v4, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-virtual {v8, p1, v9}, Landroid/widget/FrameLayout;->measure(II)V

    .line 576
    iget-object v8, p0, Lorg/telegram/ui/Components/PhotoPaintView;->colorPicker:Lorg/telegram/ui/Components/Paint/Views/ColorPicker;

    invoke-static {v7, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-static {v4, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->measure(II)V

    .line 577
    iget-object v8, p0, Lorg/telegram/ui/Components/PhotoPaintView;->toolsView:Landroid/widget/FrameLayout;

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    invoke-static {v9, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-virtual {v8, p1, v9}, Landroid/widget/FrameLayout;->measure(II)V

    .line 578
    iget-object v8, p0, Lorg/telegram/ui/Components/PhotoPaintView;->stickersView:Lorg/telegram/ui/Components/StickerMasksView;

    if-eqz v8, :cond_1

    .line 579
    iget-object v8, p0, Lorg/telegram/ui/Components/PhotoPaintView;->stickersView:Lorg/telegram/ui/Components/StickerMasksView;

    sget-object v9, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->y:I

    invoke-static {v9, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-virtual {v8, p1, v9}, Lorg/telegram/ui/Components/StickerMasksView;->measure(II)V

    .line 581
    :cond_1
    return-void

    .line 558
    .end local v0    # "bitmapH":F
    .end local v1    # "bitmapW":F
    .end local v5    # "renderHeight":F
    .end local v6    # "renderWidth":F
    :cond_2
    iget-object v8, p0, Lorg/telegram/ui/Components/PhotoPaintView;->bitmapToEdit:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v1, v8

    goto/16 :goto_0

    .line 559
    .restart local v1    # "bitmapW":F
    :cond_3
    iget-object v8, p0, Lorg/telegram/ui/Components/PhotoPaintView;->bitmapToEdit:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v0, v8

    goto/16 :goto_1

    .line 561
    .end local v1    # "bitmapW":F
    :cond_4
    int-to-float v1, v7

    .line 562
    .restart local v1    # "bitmapW":F
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v8

    sub-int v8, v3, v8

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    sub-int/2addr v8, v9

    int-to-float v0, v8

    .restart local v0    # "bitmapH":F
    goto/16 :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    .line 321
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    if-eqz v0, :cond_0

    .line 322
    iget-boolean v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->editingText:Z

    if-eqz v0, :cond_1

    .line 323
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/PhotoPaintView;->closeTextEnter(Z)V

    .line 329
    :cond_0
    :goto_0
    return v1

    .line 326
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/PhotoPaintView;->selectEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z

    goto :goto_0
.end method

.method public shutdown()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 378
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/RenderView;->shutdown()V

    .line 379
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->setVisibility(I)V

    .line 380
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->selectionContainerView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 382
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->queue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/ui/Components/PhotoPaintView$10;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/PhotoPaintView$10;-><init>(Lorg/telegram/ui/Components/PhotoPaintView;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 391
    return-void
.end method
