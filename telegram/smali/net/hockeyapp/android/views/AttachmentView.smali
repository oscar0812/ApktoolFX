.class public Lnet/hockeyapp/android/views/AttachmentView;
.super Landroid/widget/FrameLayout;
.source "AttachmentView.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# static fields
.field private static final IMAGES_PER_ROW_LANDSCAPE:I = 0x2

.field private static final IMAGES_PER_ROW_PORTRAIT:I = 0x3


# instance fields
.field private final mAttachment:Lnet/hockeyapp/android/objects/FeedbackAttachment;

.field private final mAttachmentUri:Landroid/net/Uri;

.field private final mContext:Landroid/content/Context;

.field private final mFilename:Ljava/lang/String;

.field private mGap:I

.field private mImageView:Landroid/widget/ImageView;

.field private mMaxHeightLandscape:I

.field private mMaxHeightPortrait:I

.field private mOrientation:I

.field private final mParent:Landroid/view/ViewGroup;

.field private mTextView:Landroid/widget/TextView;

.field private mWidthLandscape:I

.field private mWidthPortrait:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/net/Uri;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "attachmentUri"    # Landroid/net/Uri;
    .param p4, "removable"    # Z

    .prologue
    .line 70
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 72
    iput-object p1, p0, Lnet/hockeyapp/android/views/AttachmentView;->mContext:Landroid/content/Context;

    .line 73
    iput-object p2, p0, Lnet/hockeyapp/android/views/AttachmentView;->mParent:Landroid/view/ViewGroup;

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/hockeyapp/android/views/AttachmentView;->mAttachment:Lnet/hockeyapp/android/objects/FeedbackAttachment;

    .line 75
    iput-object p3, p0, Lnet/hockeyapp/android/views/AttachmentView;->mAttachmentUri:Landroid/net/Uri;

    .line 76
    invoke-virtual {p3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/hockeyapp/android/views/AttachmentView;->mFilename:Ljava/lang/String;

    .line 78
    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lnet/hockeyapp/android/views/AttachmentView;->calculateDimensions(I)V

    .line 79
    invoke-direct {p0, p1, p4}, Lnet/hockeyapp/android/views/AttachmentView;->initializeView(Landroid/content/Context;Z)V

    .line 81
    iget-object v0, p0, Lnet/hockeyapp/android/views/AttachmentView;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lnet/hockeyapp/android/views/AttachmentView;->mFilename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    new-instance v0, Lnet/hockeyapp/android/views/AttachmentView$1;

    invoke-direct {v0, p0}, Lnet/hockeyapp/android/views/AttachmentView$1;-><init>(Lnet/hockeyapp/android/views/AttachmentView;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 96
    invoke-virtual {v0, v1}, Lnet/hockeyapp/android/views/AttachmentView$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lnet/hockeyapp/android/objects/FeedbackAttachment;Z)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "attachment"    # Lnet/hockeyapp/android/objects/FeedbackAttachment;
    .param p4, "removable"    # Z

    .prologue
    const/4 v3, 0x0

    .line 101
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 103
    iput-object p1, p0, Lnet/hockeyapp/android/views/AttachmentView;->mContext:Landroid/content/Context;

    .line 104
    iput-object p2, p0, Lnet/hockeyapp/android/views/AttachmentView;->mParent:Landroid/view/ViewGroup;

    .line 105
    iput-object p3, p0, Lnet/hockeyapp/android/views/AttachmentView;->mAttachment:Lnet/hockeyapp/android/objects/FeedbackAttachment;

    .line 106
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lnet/hockeyapp/android/Constants;->getHockeyAppStorageDir()Ljava/io/File;

    move-result-object v1

    .line 107
    invoke-virtual {p3}, Lnet/hockeyapp/android/objects/FeedbackAttachment;->getCacheId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 106
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lnet/hockeyapp/android/views/AttachmentView;->mAttachmentUri:Landroid/net/Uri;

    .line 108
    invoke-virtual {p3}, Lnet/hockeyapp/android/objects/FeedbackAttachment;->getFilename()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/hockeyapp/android/views/AttachmentView;->mFilename:Ljava/lang/String;

    .line 110
    const/16 v0, 0x1e

    invoke-direct {p0, v0}, Lnet/hockeyapp/android/views/AttachmentView;->calculateDimensions(I)V

    .line 111
    invoke-direct {p0, p1, p4}, Lnet/hockeyapp/android/views/AttachmentView;->initializeView(Landroid/content/Context;Z)V

    .line 113
    iput v3, p0, Lnet/hockeyapp/android/views/AttachmentView;->mOrientation:I

    .line 114
    iget-object v0, p0, Lnet/hockeyapp/android/views/AttachmentView;->mTextView:Landroid/widget/TextView;

    sget v1, Lnet/hockeyapp/android/R$string;->hockeyapp_feedback_attachment_loading:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 115
    invoke-direct {p0, v3}, Lnet/hockeyapp/android/views/AttachmentView;->configureViewForPlaceholder(Z)V

    .line 116
    return-void
.end method

.method static synthetic access$000(Lnet/hockeyapp/android/views/AttachmentView;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lnet/hockeyapp/android/views/AttachmentView;

    .prologue
    .line 37
    invoke-direct {p0}, Lnet/hockeyapp/android/views/AttachmentView;->loadImageThumbnail()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lnet/hockeyapp/android/views/AttachmentView;Landroid/graphics/Bitmap;Z)V
    .locals 0
    .param p0, "x0"    # Lnet/hockeyapp/android/views/AttachmentView;
    .param p1, "x1"    # Landroid/graphics/Bitmap;
    .param p2, "x2"    # Z

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lnet/hockeyapp/android/views/AttachmentView;->configureViewForThumbnail(Landroid/graphics/Bitmap;Z)V

    return-void
.end method

.method static synthetic access$200(Lnet/hockeyapp/android/views/AttachmentView;Z)V
    .locals 0
    .param p0, "x0"    # Lnet/hockeyapp/android/views/AttachmentView;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lnet/hockeyapp/android/views/AttachmentView;->configureViewForPlaceholder(Z)V

    return-void
.end method

.method static synthetic access$300(Lnet/hockeyapp/android/views/AttachmentView;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lnet/hockeyapp/android/views/AttachmentView;

    .prologue
    .line 37
    iget-object v0, p0, Lnet/hockeyapp/android/views/AttachmentView;->mAttachmentUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$400(Lnet/hockeyapp/android/views/AttachmentView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lnet/hockeyapp/android/views/AttachmentView;

    .prologue
    .line 37
    iget-object v0, p0, Lnet/hockeyapp/android/views/AttachmentView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private calculateDimensions(I)V
    .locals 7
    .param p1, "marginDip"    # I

    .prologue
    const/4 v6, 0x1

    .line 171
    invoke-virtual {p0}, Lnet/hockeyapp/android/views/AttachmentView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 172
    .local v2, "metrics":Landroid/util/DisplayMetrics;
    const/high16 v5, 0x41200000    # 10.0f

    invoke-static {v6, v5, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iput v5, p0, Lnet/hockeyapp/android/views/AttachmentView;->mGap:I

    .line 174
    int-to-float v5, p1

    invoke-static {v6, v5, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 176
    .local v1, "layoutMargin":I
    iget v0, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 178
    .local v0, "displayWidth":I
    mul-int/lit8 v5, v1, 0x2

    sub-int v5, v0, v5

    iget v6, p0, Lnet/hockeyapp/android/views/AttachmentView;->mGap:I

    mul-int/lit8 v6, v6, 0x2

    sub-int v4, v5, v6

    .line 181
    .local v4, "parentWidthPortrait":I
    mul-int/lit8 v5, v1, 0x2

    sub-int v5, v0, v5

    iget v6, p0, Lnet/hockeyapp/android/views/AttachmentView;->mGap:I

    sub-int v3, v5, v6

    .line 183
    .local v3, "parentWidthLandscape":I
    div-int/lit8 v5, v4, 0x3

    iput v5, p0, Lnet/hockeyapp/android/views/AttachmentView;->mWidthPortrait:I

    .line 184
    div-int/lit8 v5, v3, 0x2

    iput v5, p0, Lnet/hockeyapp/android/views/AttachmentView;->mWidthLandscape:I

    .line 186
    iget v5, p0, Lnet/hockeyapp/android/views/AttachmentView;->mWidthPortrait:I

    mul-int/lit8 v5, v5, 0x2

    iput v5, p0, Lnet/hockeyapp/android/views/AttachmentView;->mMaxHeightPortrait:I

    .line 188
    iget v5, p0, Lnet/hockeyapp/android/views/AttachmentView;->mWidthLandscape:I

    iput v5, p0, Lnet/hockeyapp/android/views/AttachmentView;->mMaxHeightLandscape:I

    .line 189
    return-void
.end method

.method private configureViewForPlaceholder(Z)V
    .locals 3
    .param p1, "openOnClick"    # Z

    .prologue
    const/4 v2, -0x2

    .line 272
    iget-object v0, p0, Lnet/hockeyapp/android/views/AttachmentView;->mTextView:Landroid/widget/TextView;

    iget v1, p0, Lnet/hockeyapp/android/views/AttachmentView;->mWidthPortrait:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 273
    iget-object v0, p0, Lnet/hockeyapp/android/views/AttachmentView;->mTextView:Landroid/widget/TextView;

    iget v1, p0, Lnet/hockeyapp/android/views/AttachmentView;->mWidthPortrait:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 275
    iget-object v0, p0, Lnet/hockeyapp/android/views/AttachmentView;->mImageView:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 277
    iget-object v0, p0, Lnet/hockeyapp/android/views/AttachmentView;->mImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 278
    iget-object v0, p0, Lnet/hockeyapp/android/views/AttachmentView;->mImageView:Landroid/widget/ImageView;

    const-string/jumbo v1, "#eeeeee"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 279
    iget-object v0, p0, Lnet/hockeyapp/android/views/AttachmentView;->mImageView:Landroid/widget/ImageView;

    iget v1, p0, Lnet/hockeyapp/android/views/AttachmentView;->mWidthPortrait:I

    int-to-float v1, v1

    const v2, 0x3f99999a    # 1.2f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setMinimumHeight(I)V

    .line 280
    iget-object v0, p0, Lnet/hockeyapp/android/views/AttachmentView;->mImageView:Landroid/widget/ImageView;

    iget v1, p0, Lnet/hockeyapp/android/views/AttachmentView;->mWidthPortrait:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    .line 281
    iget-object v0, p0, Lnet/hockeyapp/android/views/AttachmentView;->mImageView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 282
    iget-object v0, p0, Lnet/hockeyapp/android/views/AttachmentView;->mImageView:Landroid/widget/ImageView;

    const-string/jumbo v1, "ic_menu_attachment"

    invoke-direct {p0, v1}, Lnet/hockeyapp/android/views/AttachmentView;->getSystemIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 283
    iget-object v0, p0, Lnet/hockeyapp/android/views/AttachmentView;->mImageView:Landroid/widget/ImageView;

    new-instance v1, Lnet/hockeyapp/android/views/AttachmentView$4;

    invoke-direct {v1, p0, p1}, Lnet/hockeyapp/android/views/AttachmentView$4;-><init>(Lnet/hockeyapp/android/views/AttachmentView;Z)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 296
    return-void
.end method

.method private configureViewForThumbnail(Landroid/graphics/Bitmap;Z)V
    .locals 6
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "openOnClick"    # Z

    .prologue
    const/4 v5, -0x2

    const/4 v4, 0x1

    .line 241
    iget v2, p0, Lnet/hockeyapp/android/views/AttachmentView;->mOrientation:I

    if-ne v2, v4, :cond_0

    iget v1, p0, Lnet/hockeyapp/android/views/AttachmentView;->mWidthLandscape:I

    .line 242
    .local v1, "width":I
    :goto_0
    iget v2, p0, Lnet/hockeyapp/android/views/AttachmentView;->mOrientation:I

    if-ne v2, v4, :cond_1

    iget v0, p0, Lnet/hockeyapp/android/views/AttachmentView;->mMaxHeightLandscape:I

    .line 245
    .local v0, "height":I
    :goto_1
    iget-object v2, p0, Lnet/hockeyapp/android/views/AttachmentView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 246
    iget-object v2, p0, Lnet/hockeyapp/android/views/AttachmentView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 248
    iget-object v2, p0, Lnet/hockeyapp/android/views/AttachmentView;->mImageView:Landroid/widget/ImageView;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 250
    iget-object v2, p0, Lnet/hockeyapp/android/views/AttachmentView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 251
    iget-object v2, p0, Lnet/hockeyapp/android/views/AttachmentView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    .line 252
    iget-object v2, p0, Lnet/hockeyapp/android/views/AttachmentView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setMaxWidth(I)V

    .line 253
    iget-object v2, p0, Lnet/hockeyapp/android/views/AttachmentView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setMaxHeight(I)V

    .line 254
    iget-object v2, p0, Lnet/hockeyapp/android/views/AttachmentView;->mImageView:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 255
    iget-object v2, p0, Lnet/hockeyapp/android/views/AttachmentView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 256
    iget-object v2, p0, Lnet/hockeyapp/android/views/AttachmentView;->mImageView:Landroid/widget/ImageView;

    new-instance v3, Lnet/hockeyapp/android/views/AttachmentView$3;

    invoke-direct {v3, p0, p2}, Lnet/hockeyapp/android/views/AttachmentView$3;-><init>(Lnet/hockeyapp/android/views/AttachmentView;Z)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 269
    return-void

    .line 241
    .end local v0    # "height":I
    .end local v1    # "width":I
    :cond_0
    iget v1, p0, Lnet/hockeyapp/android/views/AttachmentView;->mWidthPortrait:I

    goto :goto_0

    .line 242
    .restart local v1    # "width":I
    :cond_1
    iget v0, p0, Lnet/hockeyapp/android/views/AttachmentView;->mMaxHeightPortrait:I

    goto :goto_1
.end method

.method private getSystemIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 313
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 314
    invoke-virtual {p0}, Lnet/hockeyapp/android/views/AttachmentView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lnet/hockeyapp/android/views/AttachmentView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string/jumbo v2, "drawable"

    const-string/jumbo v3, "android"

    invoke-virtual {v1, p1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lnet/hockeyapp/android/views/AttachmentView;->mContext:Landroid/content/Context;

    .line 315
    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    .line 314
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 317
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lnet/hockeyapp/android/views/AttachmentView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lnet/hockeyapp/android/views/AttachmentView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string/jumbo v2, "drawable"

    const-string/jumbo v3, "android"

    invoke-virtual {v1, p1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method private initializeView(Landroid/content/Context;Z)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "removable"    # Z

    .prologue
    const/4 v9, 0x1

    const/16 v8, 0x50

    const/4 v7, -0x1

    const/4 v6, 0x0

    const/4 v5, -0x2

    .line 193
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v5, v5, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, v2}, Lnet/hockeyapp/android/views/AttachmentView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 195
    iget v2, p0, Lnet/hockeyapp/android/views/AttachmentView;->mGap:I

    invoke-virtual {p0, v6, v2, v6, v6}, Lnet/hockeyapp/android/views/AttachmentView;->setPadding(IIII)V

    .line 198
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lnet/hockeyapp/android/views/AttachmentView;->mImageView:Landroid/widget/ImageView;

    .line 201
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 202
    .local v0, "bottomView":Landroid/widget/LinearLayout;
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v7, v5, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 204
    const v2, 0x800003

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 205
    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 206
    const-string/jumbo v2, "#80262626"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 209
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lnet/hockeyapp/android/views/AttachmentView;->mTextView:Landroid/widget/TextView;

    .line 210
    iget-object v2, p0, Lnet/hockeyapp/android/views/AttachmentView;->mTextView:Landroid/widget/TextView;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v4, 0x11

    invoke-direct {v3, v7, v5, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 212
    iget-object v2, p0, Lnet/hockeyapp/android/views/AttachmentView;->mTextView:Landroid/widget/TextView;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 213
    iget-object v2, p0, Lnet/hockeyapp/android/views/AttachmentView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lnet/hockeyapp/android/R$color;->hockeyapp_text_white:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 214
    iget-object v2, p0, Lnet/hockeyapp/android/views/AttachmentView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->setSingleLine()V

    .line 215
    iget-object v2, p0, Lnet/hockeyapp/android/views/AttachmentView;->mTextView:Landroid/widget/TextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 218
    if-eqz p2, :cond_0

    .line 219
    new-instance v1, Landroid/widget/ImageButton;

    invoke-direct {v1, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 220
    .local v1, "imageButton":Landroid/widget/ImageButton;
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v7, v5, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 222
    invoke-virtual {v1, v9}, Landroid/widget/ImageButton;->setAdjustViewBounds(Z)V

    .line 223
    const-string/jumbo v2, "ic_menu_delete"

    invoke-direct {p0, v2}, Lnet/hockeyapp/android/views/AttachmentView;->getSystemIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 224
    invoke-virtual {v1, v6}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 225
    new-instance v2, Lnet/hockeyapp/android/views/AttachmentView$2;

    invoke-direct {v2, p0}, Lnet/hockeyapp/android/views/AttachmentView$2;-><init>(Lnet/hockeyapp/android/views/AttachmentView;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 235
    .end local v1    # "imageButton":Landroid/widget/ImageButton;
    :cond_0
    iget-object v2, p0, Lnet/hockeyapp/android/views/AttachmentView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 236
    iget-object v2, p0, Lnet/hockeyapp/android/views/AttachmentView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Lnet/hockeyapp/android/views/AttachmentView;->addView(Landroid/view/View;)V

    .line 237
    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/views/AttachmentView;->addView(Landroid/view/View;)V

    .line 238
    return-void
.end method

.method private loadImageThumbnail()Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 300
    :try_start_0
    iget-object v3, p0, Lnet/hockeyapp/android/views/AttachmentView;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lnet/hockeyapp/android/views/AttachmentView;->mAttachmentUri:Landroid/net/Uri;

    invoke-static {v3, v4}, Lnet/hockeyapp/android/utils/ImageUtils;->determineOrientation(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v3

    iput v3, p0, Lnet/hockeyapp/android/views/AttachmentView;->mOrientation:I

    .line 301
    iget v3, p0, Lnet/hockeyapp/android/views/AttachmentView;->mOrientation:I

    if-ne v3, v5, :cond_0

    iget v2, p0, Lnet/hockeyapp/android/views/AttachmentView;->mWidthLandscape:I

    .line 302
    .local v2, "width":I
    :goto_0
    iget v3, p0, Lnet/hockeyapp/android/views/AttachmentView;->mOrientation:I

    if-ne v3, v5, :cond_1

    iget v0, p0, Lnet/hockeyapp/android/views/AttachmentView;->mMaxHeightLandscape:I

    .line 305
    .local v0, "height":I
    :goto_1
    iget-object v3, p0, Lnet/hockeyapp/android/views/AttachmentView;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lnet/hockeyapp/android/views/AttachmentView;->mAttachmentUri:Landroid/net/Uri;

    invoke-static {v3, v4, v2, v0}, Lnet/hockeyapp/android/utils/ImageUtils;->decodeSampledBitmap(Landroid/content/Context;Landroid/net/Uri;II)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 307
    .end local v0    # "height":I
    .end local v2    # "width":I
    :goto_2
    return-object v3

    .line 301
    :cond_0
    iget v2, p0, Lnet/hockeyapp/android/views/AttachmentView;->mWidthPortrait:I

    goto :goto_0

    .line 302
    .restart local v2    # "width":I
    :cond_1
    iget v0, p0, Lnet/hockeyapp/android/views/AttachmentView;->mMaxHeightPortrait:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 306
    .end local v2    # "width":I
    :catch_0
    move-exception v1

    .line 307
    .local v1, "t":Ljava/lang/Throwable;
    const/4 v3, 0x0

    goto :goto_2
.end method


# virtual methods
.method public getAttachment()Lnet/hockeyapp/android/objects/FeedbackAttachment;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lnet/hockeyapp/android/views/AttachmentView;->mAttachment:Lnet/hockeyapp/android/objects/FeedbackAttachment;

    return-object v0
.end method

.method public getAttachmentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lnet/hockeyapp/android/views/AttachmentView;->mAttachmentUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getEffectiveMaxHeight()I
    .locals 2

    .prologue
    .line 147
    iget v0, p0, Lnet/hockeyapp/android/views/AttachmentView;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lnet/hockeyapp/android/views/AttachmentView;->mMaxHeightLandscape:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lnet/hockeyapp/android/views/AttachmentView;->mMaxHeightPortrait:I

    goto :goto_0
.end method

.method public getGap()I
    .locals 1

    .prologue
    .line 143
    iget v0, p0, Lnet/hockeyapp/android/views/AttachmentView;->mGap:I

    return v0
.end method

.method public getMaxHeightLandscape()I
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lnet/hockeyapp/android/views/AttachmentView;->mMaxHeightLandscape:I

    return v0
.end method

.method public getMaxHeightPortrait()I
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Lnet/hockeyapp/android/views/AttachmentView;->mMaxHeightPortrait:I

    return v0
.end method

.method public getWidthLandscape()I
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Lnet/hockeyapp/android/views/AttachmentView;->mWidthLandscape:I

    return v0
.end method

.method public getWidthPortrait()I
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lnet/hockeyapp/android/views/AttachmentView;->mWidthPortrait:I

    return v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lnet/hockeyapp/android/views/AttachmentView;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 152
    return-void
.end method

.method public setImage(Landroid/graphics/Bitmap;I)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "orientation"    # I

    .prologue
    const/4 v2, 0x1

    .line 155
    iget-object v0, p0, Lnet/hockeyapp/android/views/AttachmentView;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lnet/hockeyapp/android/views/AttachmentView;->mFilename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    iput p2, p0, Lnet/hockeyapp/android/views/AttachmentView;->mOrientation:I

    .line 158
    if-nez p1, :cond_0

    .line 159
    invoke-direct {p0, v2}, Lnet/hockeyapp/android/views/AttachmentView;->configureViewForPlaceholder(Z)V

    .line 164
    :goto_0
    return-void

    .line 162
    :cond_0
    invoke-direct {p0, p1, v2}, Lnet/hockeyapp/android/views/AttachmentView;->configureViewForThumbnail(Landroid/graphics/Bitmap;Z)V

    goto :goto_0
.end method

.method public signalImageLoadingError()V
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lnet/hockeyapp/android/views/AttachmentView;->mTextView:Landroid/widget/TextView;

    sget v1, Lnet/hockeyapp/android/R$string;->hockeyapp_feedback_attachment_error:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 168
    return-void
.end method
