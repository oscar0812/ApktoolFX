.class public Lorg/telegram/ui/ActionBar/ThemeDescription;
.super Ljava/lang/Object;
.source "ThemeDescription.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;
    }
.end annotation


# static fields
.field public static FLAG_AB_AM_BACKGROUND:I

.field public static FLAG_AB_AM_ITEMSCOLOR:I

.field public static FLAG_AB_AM_SELECTORCOLOR:I

.field public static FLAG_AB_AM_TOPBACKGROUND:I

.field public static FLAG_AB_ITEMSCOLOR:I

.field public static FLAG_AB_SEARCH:I

.field public static FLAG_AB_SEARCHPLACEHOLDER:I

.field public static FLAG_AB_SELECTORCOLOR:I

.field public static FLAG_AB_SUBMENUBACKGROUND:I

.field public static FLAG_AB_SUBMENUITEM:I

.field public static FLAG_AB_SUBTITLECOLOR:I

.field public static FLAG_AB_TITLECOLOR:I

.field public static FLAG_BACKGROUND:I

.field public static FLAG_BACKGROUNDFILTER:I

.field public static FLAG_CELLBACKGROUNDCOLOR:I

.field public static FLAG_CHECKBOX:I

.field public static FLAG_CHECKBOXCHECK:I

.field public static FLAG_CHECKTAG:I

.field public static FLAG_CURSORCOLOR:I

.field public static FLAG_DRAWABLESELECTEDSTATE:I

.field public static FLAG_FASTSCROLL:I

.field public static FLAG_HINTTEXTCOLOR:I

.field public static FLAG_IMAGECOLOR:I

.field public static FLAG_LINKCOLOR:I

.field public static FLAG_LISTGLOWCOLOR:I

.field public static FLAG_PROGRESSBAR:I

.field public static FLAG_SECTIONS:I

.field public static FLAG_SELECTOR:I

.field public static FLAG_SELECTORWHITE:I

.field public static FLAG_SERVICEBACKGROUND:I

.field public static FLAG_TEXTCOLOR:I

.field public static FLAG_USEBACKGROUNDDRAWABLE:I


# instance fields
.field private cachedFields:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field

.field private changeFlags:I

.field private currentColor:I

.field private currentKey:Ljava/lang/String;

.field private defaultColor:I

.field private delegate:Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;

.field private drawablesToUpdate:[Landroid/graphics/drawable/Drawable;

.field private listClasses:[Ljava/lang/Class;

.field private listClassesFieldName:[Ljava/lang/String;

.field private paintToUpdate:[Landroid/graphics/Paint;

.field private previousColor:I

.field private previousIsDefault:[Z

.field private viewToInvalidate:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x1

    sput v0, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    .line 55
    const/4 v0, 0x2

    sput v0, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LINKCOLOR:I

    .line 56
    const/4 v0, 0x4

    sput v0, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    .line 57
    const/16 v0, 0x8

    sput v0, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    .line 58
    const/16 v0, 0x10

    sput v0, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    .line 59
    const/16 v0, 0x20

    sput v0, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    .line 60
    const/16 v0, 0x40

    sput v0, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    .line 61
    const/16 v0, 0x80

    sput v0, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    .line 62
    const/16 v0, 0x100

    sput v0, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    .line 63
    const/16 v0, 0x200

    sput v0, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_AM_ITEMSCOLOR:I

    .line 64
    const/16 v0, 0x400

    sput v0, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SUBTITLECOLOR:I

    .line 65
    const/16 v0, 0x800

    sput v0, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_PROGRESSBAR:I

    .line 66
    const/16 v0, 0x1000

    sput v0, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    .line 67
    const/16 v0, 0x2000

    sput v0, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKBOX:I

    .line 68
    const/16 v0, 0x4000

    sput v0, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKBOXCHECK:I

    .line 69
    const v0, 0x8000

    sput v0, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    .line 70
    const/high16 v0, 0x10000

    sput v0, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_DRAWABLESELECTEDSTATE:I

    .line 71
    const/high16 v0, 0x20000

    sput v0, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_USEBACKGROUNDDRAWABLE:I

    .line 72
    const/high16 v0, 0x40000

    sput v0, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    .line 73
    const/high16 v0, 0x80000

    sput v0, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SECTIONS:I

    .line 74
    const/high16 v0, 0x100000

    sput v0, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_AM_BACKGROUND:I

    .line 75
    const/high16 v0, 0x200000

    sput v0, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_AM_TOPBACKGROUND:I

    .line 76
    const/high16 v0, 0x400000

    sput v0, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_AM_SELECTORCOLOR:I

    .line 77
    const/high16 v0, 0x800000

    sput v0, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_HINTTEXTCOLOR:I

    .line 78
    const/high16 v0, 0x1000000

    sput v0, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CURSORCOLOR:I

    .line 79
    const/high16 v0, 0x2000000

    sput v0, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_FASTSCROLL:I

    .line 80
    const/high16 v0, 0x4000000

    sput v0, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SEARCHPLACEHOLDER:I

    .line 81
    const/high16 v0, 0x8000000

    sput v0, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SEARCH:I

    .line 82
    const/high16 v0, 0x10000000

    sput v0, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTORWHITE:I

    .line 83
    const/high16 v0, 0x20000000

    sput v0, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SERVICEBACKGROUND:I

    .line 84
    const/high16 v0, 0x40000000    # 2.0f

    sput v0, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SUBMENUITEM:I

    .line 85
    const/high16 v0, -0x80000000

    sput v0, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SUBMENUBACKGROUND:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "flags"    # I
    .param p3, "classes"    # [Ljava/lang/Class;
    .param p4, "paint"    # Landroid/graphics/Paint;
    .param p5, "drawables"    # [Landroid/graphics/drawable/Drawable;
    .param p6, "themeDescriptionDelegate"    # Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;
    .param p7, "key"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-array v0, v1, [Z

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->previousIsDefault:[Z

    .line 117
    iput-object p7, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->currentKey:Ljava/lang/String;

    .line 118
    if-eqz p4, :cond_0

    .line 119
    new-array v0, v1, [Landroid/graphics/Paint;

    const/4 v1, 0x0

    aput-object p4, v0, v1

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->paintToUpdate:[Landroid/graphics/Paint;

    .line 121
    :cond_0
    iput-object p5, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->drawablesToUpdate:[Landroid/graphics/drawable/Drawable;

    .line 122
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    .line 123
    iput p2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    .line 124
    iput-object p3, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->listClasses:[Ljava/lang/Class;

    .line 125
    iput-object p6, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->delegate:Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;

    .line 126
    return-void
.end method

.method public constructor <init>(Landroid/view/View;I[Ljava/lang/Class;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "flags"    # I
    .param p3, "classes"    # [Ljava/lang/Class;
    .param p4, "paint"    # [Landroid/graphics/Paint;
    .param p5, "drawables"    # [Landroid/graphics/drawable/Drawable;
    .param p6, "themeDescriptionDelegate"    # Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;
    .param p7, "key"    # Ljava/lang/String;
    .param p8, "unused"    # Ljava/lang/Object;

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    const/4 v0, 0x1

    new-array v0, v0, [Z

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->previousIsDefault:[Z

    .line 107
    iput-object p7, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->currentKey:Ljava/lang/String;

    .line 108
    iput-object p4, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->paintToUpdate:[Landroid/graphics/Paint;

    .line 109
    iput-object p5, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->drawablesToUpdate:[Landroid/graphics/drawable/Drawable;

    .line 110
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    .line 111
    iput p2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    .line 112
    iput-object p3, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->listClasses:[Ljava/lang/Class;

    .line 113
    iput-object p6, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->delegate:Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;

    .line 114
    return-void
.end method

.method public constructor <init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "flags"    # I
    .param p3, "classes"    # [Ljava/lang/Class;
    .param p4, "classesFields"    # [Ljava/lang/String;
    .param p5, "paint"    # [Landroid/graphics/Paint;
    .param p6, "drawables"    # [Landroid/graphics/drawable/Drawable;
    .param p7, "themeDescriptionDelegate"    # Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;
    .param p8, "key"    # Ljava/lang/String;

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    const/4 v0, 0x1

    new-array v0, v0, [Z

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->previousIsDefault:[Z

    .line 129
    iput-object p8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->currentKey:Ljava/lang/String;

    .line 130
    iput-object p5, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->paintToUpdate:[Landroid/graphics/Paint;

    .line 131
    iput-object p6, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->drawablesToUpdate:[Landroid/graphics/drawable/Drawable;

    .line 132
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    .line 133
    iput p2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    .line 134
    iput-object p3, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->listClasses:[Ljava/lang/Class;

    .line 135
    iput-object p4, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->listClassesFieldName:[Ljava/lang/String;

    .line 136
    iput-object p7, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->delegate:Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;

    .line 137
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->cachedFields:Ljava/util/HashMap;

    .line 138
    return-void
.end method

.method private processViewColor(Landroid/view/View;I)V
    .locals 15
    .param p1, "child"    # Landroid/view/View;
    .param p2, "color"    # I

    .prologue
    .line 359
    const/4 v2, 0x0

    .local v2, "b":I
    :goto_0
    iget-object v12, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->listClasses:[Ljava/lang/Class;

    array-length v12, v12

    if-ge v2, v12, :cond_2d

    .line 360
    iget-object v12, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->listClasses:[Ljava/lang/Class;

    aget-object v12, v12, v2

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 361
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->invalidate()V

    .line 363
    iget v12, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    and-int/2addr v12, v13

    if-eqz v12, :cond_0

    iget v12, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    and-int/2addr v12, v13

    if-eqz v12, :cond_9

    iget-object v12, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->currentKey:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 364
    :cond_0
    const/4 v11, 0x1

    .line 365
    .local v11, "passedCheck":Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->invalidate()V

    .line 366
    iget v12, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    and-int/2addr v12, v13

    if-eqz v12, :cond_6

    .line 367
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 368
    .local v5, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v5, :cond_1

    .line 369
    iget v12, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    and-int/2addr v12, v13

    if-eqz v12, :cond_4

    .line 370
    instance-of v12, v5, Lorg/telegram/ui/Components/CombinedDrawable;

    if-eqz v12, :cond_1

    move-object v12, v5

    .line 371
    check-cast v12, Lorg/telegram/ui/Components/CombinedDrawable;

    invoke-virtual {v12}, Lorg/telegram/ui/Components/CombinedDrawable;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 372
    .local v3, "back":Landroid/graphics/drawable/Drawable;
    instance-of v12, v3, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v12, :cond_1

    .line 373
    check-cast v3, Landroid/graphics/drawable/ColorDrawable;

    .end local v3    # "back":Landroid/graphics/drawable/Drawable;
    move/from16 v0, p2

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 398
    .end local v5    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    :goto_1
    iget-object v12, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->listClassesFieldName:[Ljava/lang/String;

    if-eqz v12, :cond_2c

    .line 400
    :try_start_0
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->listClasses:[Ljava/lang/Class;

    aget-object v13, v13, v2

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->listClassesFieldName:[Ljava/lang/String;

    aget-object v13, v13, v2

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 401
    .local v9, "key":Ljava/lang/String;
    iget-object v12, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->cachedFields:Ljava/util/HashMap;

    invoke-virtual {v12, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/reflect/Field;

    .line 402
    .local v8, "field":Ljava/lang/reflect/Field;
    if-nez v8, :cond_2

    .line 403
    iget-object v12, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->listClasses:[Ljava/lang/Class;

    aget-object v12, v12, v2

    iget-object v13, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->listClassesFieldName:[Ljava/lang/String;

    aget-object v13, v13, v2

    invoke-virtual {v12, v13}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    .line 404
    if-eqz v8, :cond_2

    .line 405
    const/4 v12, 0x1

    invoke-virtual {v8, v12}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 406
    iget-object v12, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->cachedFields:Ljava/util/HashMap;

    invoke-virtual {v12, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    :cond_2
    if-eqz v8, :cond_3

    .line 410
    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 411
    .local v10, "object":Ljava/lang/Object;
    if-eqz v10, :cond_3

    .line 412
    if-nez v11, :cond_a

    instance-of v12, v10, Landroid/view/View;

    if-eqz v12, :cond_a

    iget-object v13, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->currentKey:Ljava/lang/String;

    move-object v0, v10

    check-cast v0, Landroid/view/View;

    move-object v12, v0

    invoke-virtual {v12}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v12

    if-nez v12, :cond_a

    .line 359
    .end local v8    # "field":Ljava/lang/reflect/Field;
    .end local v9    # "key":Ljava/lang/String;
    .end local v10    # "object":Ljava/lang/Object;
    .end local v11    # "passedCheck":Z
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 377
    .restart local v5    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v11    # "passedCheck":Z
    :cond_4
    instance-of v12, v5, Lorg/telegram/ui/Components/CombinedDrawable;

    if-eqz v12, :cond_5

    .line 378
    check-cast v5, Lorg/telegram/ui/Components/CombinedDrawable;

    .end local v5    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v5}, Lorg/telegram/ui/Components/CombinedDrawable;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 380
    .restart local v5    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_5
    new-instance v12, Landroid/graphics/PorterDuffColorFilter;

    sget-object v13, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    move/from16 v0, p2

    invoke-direct {v12, v0, v13}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_1

    .line 383
    .end local v5    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_6
    iget v12, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    and-int/2addr v12, v13

    if-eqz v12, :cond_7

    .line 384
    invoke-virtual/range {p1 .. p2}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_1

    .line 385
    :cond_7
    iget v12, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    and-int/2addr v12, v13

    if-eqz v12, :cond_8

    .line 386
    move-object/from16 v0, p1

    instance-of v12, v0, Landroid/widget/TextView;

    if-eqz v12, :cond_1

    move-object/from16 v12, p1

    .line 387
    check-cast v12, Landroid/widget/TextView;

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    .line 389
    :cond_8
    iget v12, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SERVICEBACKGROUND:I

    and-int/2addr v12, v13

    if-eqz v12, :cond_1

    .line 390
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 391
    .local v4, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_1

    .line 392
    sget-object v12, Lorg/telegram/ui/ActionBar/Theme;->colorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v4, v12}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto/16 :goto_1

    .line 396
    .end local v4    # "background":Landroid/graphics/drawable/Drawable;
    .end local v11    # "passedCheck":Z
    :cond_9
    const/4 v11, 0x0

    .restart local v11    # "passedCheck":Z
    goto/16 :goto_1

    .line 415
    .restart local v8    # "field":Ljava/lang/reflect/Field;
    .restart local v9    # "key":Ljava/lang/String;
    .restart local v10    # "object":Ljava/lang/Object;
    :cond_a
    :try_start_1
    instance-of v12, v10, Landroid/view/View;

    if-eqz v12, :cond_b

    .line 416
    move-object v0, v10

    check-cast v0, Landroid/view/View;

    move-object v12, v0

    invoke-virtual {v12}, Landroid/view/View;->invalidate()V

    .line 418
    :cond_b
    iget v12, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_USEBACKGROUNDDRAWABLE:I

    and-int/2addr v12, v13

    if-eqz v12, :cond_c

    instance-of v12, v10, Landroid/view/View;

    if-eqz v12, :cond_c

    .line 419
    check-cast v10, Landroid/view/View;

    .end local v10    # "object":Ljava/lang/Object;
    invoke-virtual {v10}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 421
    :cond_c
    iget v12, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    and-int/2addr v12, v13

    if-eqz v12, :cond_d

    instance-of v12, v10, Landroid/view/View;

    if-eqz v12, :cond_d

    .line 422
    check-cast v10, Landroid/view/View;

    move/from16 v0, p2

    invoke-virtual {v10, v0}, Landroid/view/View;->setBackgroundColor(I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 518
    .end local v8    # "field":Ljava/lang/reflect/Field;
    .end local v9    # "key":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 519
    .local v7, "e":Ljava/lang/Throwable;
    invoke-static {v7}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 423
    .end local v7    # "e":Ljava/lang/Throwable;
    .restart local v8    # "field":Ljava/lang/reflect/Field;
    .restart local v9    # "key":Ljava/lang/String;
    :cond_d
    :try_start_2
    instance-of v12, v10, Lorg/telegram/ui/Components/Switch;

    if-eqz v12, :cond_e

    .line 424
    check-cast v10, Lorg/telegram/ui/Components/Switch;

    invoke-virtual {v10}, Lorg/telegram/ui/Components/Switch;->checkColorFilters()V

    goto/16 :goto_2

    .line 425
    :cond_e
    instance-of v12, v10, Lorg/telegram/ui/Components/EditTextCaption;

    if-eqz v12, :cond_10

    .line 426
    iget v12, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_HINTTEXTCOLOR:I

    and-int/2addr v12, v13

    if-eqz v12, :cond_f

    .line 427
    move-object v0, v10

    check-cast v0, Lorg/telegram/ui/Components/EditTextCaption;

    move-object v12, v0

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Lorg/telegram/ui/Components/EditTextCaption;->setHintColor(I)V

    .line 428
    check-cast v10, Lorg/telegram/ui/Components/EditTextCaption;

    move/from16 v0, p2

    invoke-virtual {v10, v0}, Lorg/telegram/ui/Components/EditTextCaption;->setHintTextColor(I)V

    goto/16 :goto_2

    .line 430
    :cond_f
    check-cast v10, Lorg/telegram/ui/Components/EditTextCaption;

    move/from16 v0, p2

    invoke-virtual {v10, v0}, Lorg/telegram/ui/Components/EditTextCaption;->setTextColor(I)V

    goto/16 :goto_2

    .line 432
    :cond_10
    instance-of v12, v10, Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v12, :cond_12

    .line 433
    iget v12, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LINKCOLOR:I

    and-int/2addr v12, v13

    if-eqz v12, :cond_11

    .line 434
    check-cast v10, Lorg/telegram/ui/ActionBar/SimpleTextView;

    move/from16 v0, p2

    invoke-virtual {v10, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setLinkTextColor(I)V

    goto/16 :goto_2

    .line 436
    :cond_11
    check-cast v10, Lorg/telegram/ui/ActionBar/SimpleTextView;

    move/from16 v0, p2

    invoke-virtual {v10, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    goto/16 :goto_2

    .line 438
    :cond_12
    instance-of v12, v10, Landroid/widget/TextView;

    if-eqz v12, :cond_15

    .line 439
    iget v12, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    and-int/2addr v12, v13

    if-eqz v12, :cond_13

    .line 440
    check-cast v10, Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 441
    .local v6, "drawables":[Landroid/graphics/drawable/Drawable;
    if-eqz v6, :cond_3

    .line 442
    const/4 v1, 0x0

    .local v1, "a":I
    :goto_3
    array-length v12, v6

    if-ge v1, v12, :cond_3

    .line 443
    aget-object v12, v6, v1

    new-instance v13, Landroid/graphics/PorterDuffColorFilter;

    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    move/from16 v0, p2

    invoke-direct {v13, v0, v14}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v12, v13}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 442
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 446
    .end local v1    # "a":I
    .end local v6    # "drawables":[Landroid/graphics/drawable/Drawable;
    :cond_13
    iget v12, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LINKCOLOR:I

    and-int/2addr v12, v13

    if-eqz v12, :cond_14

    .line 447
    move-object v0, v10

    check-cast v0, Landroid/widget/TextView;

    move-object v12, v0

    invoke-virtual {v12}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v12

    move/from16 v0, p2

    iput v0, v12, Landroid/text/TextPaint;->linkColor:I

    .line 448
    check-cast v10, Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->invalidate()V

    goto/16 :goto_2

    .line 450
    :cond_14
    check-cast v10, Landroid/widget/TextView;

    move/from16 v0, p2

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    .line 452
    :cond_15
    instance-of v12, v10, Landroid/widget/ImageView;

    if-eqz v12, :cond_16

    .line 453
    check-cast v10, Landroid/widget/ImageView;

    new-instance v12, Landroid/graphics/PorterDuffColorFilter;

    sget-object v13, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    move/from16 v0, p2

    invoke-direct {v12, v0, v13}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v10, v12}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto/16 :goto_2

    .line 454
    :cond_16
    instance-of v12, v10, Lorg/telegram/ui/Components/BackupImageView;

    if-eqz v12, :cond_19

    .line 455
    check-cast v10, Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v10}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/messenger/ImageReceiver;->getStaticThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 456
    .restart local v5    # "drawable":Landroid/graphics/drawable/Drawable;
    instance-of v12, v5, Lorg/telegram/ui/Components/CombinedDrawable;

    if-eqz v12, :cond_18

    .line 457
    iget v12, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    and-int/2addr v12, v13

    if-eqz v12, :cond_17

    .line 458
    check-cast v5, Lorg/telegram/ui/Components/CombinedDrawable;

    .end local v5    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v5}, Lorg/telegram/ui/Components/CombinedDrawable;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    new-instance v13, Landroid/graphics/PorterDuffColorFilter;

    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    move/from16 v0, p2

    invoke-direct {v13, v0, v14}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v12, v13}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto/16 :goto_2

    .line 460
    .restart local v5    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_17
    check-cast v5, Lorg/telegram/ui/Components/CombinedDrawable;

    .end local v5    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v5}, Lorg/telegram/ui/Components/CombinedDrawable;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    new-instance v13, Landroid/graphics/PorterDuffColorFilter;

    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    move/from16 v0, p2

    invoke-direct {v13, v0, v14}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v12, v13}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto/16 :goto_2

    .line 462
    .restart local v5    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_18
    if-eqz v5, :cond_3

    .line 463
    new-instance v12, Landroid/graphics/PorterDuffColorFilter;

    sget-object v13, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    move/from16 v0, p2

    invoke-direct {v12, v0, v13}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto/16 :goto_2

    .line 465
    .end local v5    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_19
    instance-of v12, v10, Landroid/graphics/drawable/Drawable;

    if-eqz v12, :cond_21

    .line 466
    instance-of v12, v10, Lorg/telegram/ui/Components/LetterDrawable;

    if-eqz v12, :cond_1b

    .line 467
    iget v12, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    and-int/2addr v12, v13

    if-eqz v12, :cond_1a

    .line 468
    check-cast v10, Lorg/telegram/ui/Components/LetterDrawable;

    move/from16 v0, p2

    invoke-virtual {v10, v0}, Lorg/telegram/ui/Components/LetterDrawable;->setBackgroundColor(I)V

    goto/16 :goto_2

    .line 470
    :cond_1a
    check-cast v10, Lorg/telegram/ui/Components/LetterDrawable;

    move/from16 v0, p2

    invoke-virtual {v10, v0}, Lorg/telegram/ui/Components/LetterDrawable;->setColor(I)V

    goto/16 :goto_2

    .line 472
    :cond_1b
    instance-of v12, v10, Lorg/telegram/ui/Components/CombinedDrawable;

    if-eqz v12, :cond_1d

    .line 473
    iget v12, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    and-int/2addr v12, v13

    if-eqz v12, :cond_1c

    .line 474
    check-cast v10, Lorg/telegram/ui/Components/CombinedDrawable;

    invoke-virtual {v10}, Lorg/telegram/ui/Components/CombinedDrawable;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    new-instance v13, Landroid/graphics/PorterDuffColorFilter;

    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    move/from16 v0, p2

    invoke-direct {v13, v0, v14}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v12, v13}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto/16 :goto_2

    .line 476
    :cond_1c
    check-cast v10, Lorg/telegram/ui/Components/CombinedDrawable;

    invoke-virtual {v10}, Lorg/telegram/ui/Components/CombinedDrawable;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    new-instance v13, Landroid/graphics/PorterDuffColorFilter;

    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    move/from16 v0, p2

    invoke-direct {v13, v0, v14}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v12, v13}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto/16 :goto_2

    .line 478
    :cond_1d
    instance-of v12, v10, Landroid/graphics/drawable/StateListDrawable;

    if-nez v12, :cond_1e

    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0x15

    if-lt v12, v13, :cond_20

    instance-of v12, v10, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v12, :cond_20

    .line 479
    :cond_1e
    check-cast v10, Landroid/graphics/drawable/Drawable;

    iget v12, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_DRAWABLESELECTEDSTATE:I

    and-int/2addr v12, v13

    if-eqz v12, :cond_1f

    const/4 v12, 0x1

    :goto_4
    move/from16 v0, p2

    invoke-static {v10, v0, v12}, Lorg/telegram/ui/ActionBar/Theme;->setSelectorDrawableColor(Landroid/graphics/drawable/Drawable;IZ)V

    goto/16 :goto_2

    :cond_1f
    const/4 v12, 0x0

    goto :goto_4

    .line 481
    :cond_20
    check-cast v10, Landroid/graphics/drawable/Drawable;

    new-instance v12, Landroid/graphics/PorterDuffColorFilter;

    sget-object v13, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    move/from16 v0, p2

    invoke-direct {v12, v0, v13}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v10, v12}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto/16 :goto_2

    .line 483
    :cond_21
    instance-of v12, v10, Lorg/telegram/ui/Components/CheckBox;

    if-eqz v12, :cond_23

    .line 484
    iget v12, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKBOX:I

    and-int/2addr v12, v13

    if-eqz v12, :cond_22

    .line 485
    check-cast v10, Lorg/telegram/ui/Components/CheckBox;

    move/from16 v0, p2

    invoke-virtual {v10, v0}, Lorg/telegram/ui/Components/CheckBox;->setBackgroundColor(I)V

    goto/16 :goto_2

    .line 486
    :cond_22
    iget v12, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKBOXCHECK:I

    and-int/2addr v12, v13

    if-eqz v12, :cond_3

    .line 487
    check-cast v10, Lorg/telegram/ui/Components/CheckBox;

    move/from16 v0, p2

    invoke-virtual {v10, v0}, Lorg/telegram/ui/Components/CheckBox;->setCheckColor(I)V

    goto/16 :goto_2

    .line 489
    :cond_23
    instance-of v12, v10, Lorg/telegram/ui/Components/GroupCreateCheckBox;

    if-eqz v12, :cond_24

    .line 490
    check-cast v10, Lorg/telegram/ui/Components/GroupCreateCheckBox;

    invoke-virtual {v10}, Lorg/telegram/ui/Components/GroupCreateCheckBox;->updateColors()V

    goto/16 :goto_2

    .line 491
    :cond_24
    instance-of v12, v10, Ljava/lang/Integer;

    if-eqz v12, :cond_25

    .line 492
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v8, v0, v12}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 493
    :cond_25
    instance-of v12, v10, Lorg/telegram/ui/Components/RadioButton;

    if-eqz v12, :cond_27

    .line 494
    iget v12, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKBOX:I

    and-int/2addr v12, v13

    if-eqz v12, :cond_26

    .line 495
    move-object v0, v10

    check-cast v0, Lorg/telegram/ui/Components/RadioButton;

    move-object v12, v0

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Lorg/telegram/ui/Components/RadioButton;->setBackgroundColor(I)V

    .line 496
    check-cast v10, Lorg/telegram/ui/Components/RadioButton;

    invoke-virtual {v10}, Lorg/telegram/ui/Components/RadioButton;->invalidate()V

    goto/16 :goto_2

    .line 497
    :cond_26
    iget v12, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKBOXCHECK:I

    and-int/2addr v12, v13

    if-eqz v12, :cond_3

    .line 498
    move-object v0, v10

    check-cast v0, Lorg/telegram/ui/Components/RadioButton;

    move-object v12, v0

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Lorg/telegram/ui/Components/RadioButton;->setCheckedColor(I)V

    .line 499
    check-cast v10, Lorg/telegram/ui/Components/RadioButton;

    invoke-virtual {v10}, Lorg/telegram/ui/Components/RadioButton;->invalidate()V

    goto/16 :goto_2

    .line 501
    :cond_27
    instance-of v12, v10, Landroid/text/TextPaint;

    if-eqz v12, :cond_29

    .line 502
    iget v12, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LINKCOLOR:I

    and-int/2addr v12, v13

    if-eqz v12, :cond_28

    .line 503
    check-cast v10, Landroid/text/TextPaint;

    move/from16 v0, p2

    iput v0, v10, Landroid/text/TextPaint;->linkColor:I

    goto/16 :goto_2

    .line 505
    :cond_28
    check-cast v10, Landroid/text/TextPaint;

    move/from16 v0, p2

    invoke-virtual {v10, v0}, Landroid/text/TextPaint;->setColor(I)V

    goto/16 :goto_2

    .line 507
    :cond_29
    instance-of v12, v10, Lorg/telegram/ui/Components/LineProgressView;

    if-eqz v12, :cond_2b

    .line 508
    iget v12, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_PROGRESSBAR:I

    and-int/2addr v12, v13

    if-eqz v12, :cond_2a

    .line 509
    check-cast v10, Lorg/telegram/ui/Components/LineProgressView;

    move/from16 v0, p2

    invoke-virtual {v10, v0}, Lorg/telegram/ui/Components/LineProgressView;->setProgressColor(I)V

    goto/16 :goto_2

    .line 511
    :cond_2a
    check-cast v10, Lorg/telegram/ui/Components/LineProgressView;

    move/from16 v0, p2

    invoke-virtual {v10, v0}, Lorg/telegram/ui/Components/LineProgressView;->setBackColor(I)V

    goto/16 :goto_2

    .line 513
    :cond_2b
    instance-of v12, v10, Landroid/graphics/Paint;

    if-eqz v12, :cond_3

    .line 514
    check-cast v10, Landroid/graphics/Paint;

    move/from16 v0, p2

    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setColor(I)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2

    .line 521
    .end local v8    # "field":Ljava/lang/reflect/Field;
    .end local v9    # "key":Ljava/lang/String;
    :cond_2c
    move-object/from16 v0, p1

    instance-of v12, v0, Lorg/telegram/ui/Components/GroupCreateSpan;

    if-eqz v12, :cond_3

    move-object/from16 v12, p1

    .line 522
    check-cast v12, Lorg/telegram/ui/Components/GroupCreateSpan;

    invoke-virtual {v12}, Lorg/telegram/ui/Components/GroupCreateSpan;->updateColors()V

    goto/16 :goto_2

    .line 526
    .end local v11    # "passedCheck":Z
    :cond_2d
    return-void
.end method


# virtual methods
.method public getCurrentColor()I
    .locals 1

    .prologue
    .line 537
    iget v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->currentColor:I

    return v0
.end method

.method public getCurrentKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 529
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->currentKey:Ljava/lang/String;

    return-object v0
.end method

.method public getSetColor()I
    .locals 1

    .prologue
    .line 541
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->currentKey:Ljava/lang/String;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 553
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->currentKey:Ljava/lang/String;

    return-object v0
.end method

.method public setColor(IZ)V
    .locals 11
    .param p1, "color"    # I
    .param p2, "useDefault"    # Z

    .prologue
    .line 141
    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->currentKey:Ljava/lang/String;

    invoke-static {v8, p1, p2}, Lorg/telegram/ui/ActionBar/Theme;->setColor(Ljava/lang/String;IZ)V

    .line 142
    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->paintToUpdate:[Landroid/graphics/Paint;

    if-eqz v8, :cond_1

    .line 143
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->paintToUpdate:[Landroid/graphics/Paint;

    array-length v8, v8

    if-ge v0, v8, :cond_1

    .line 144
    iget v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v9, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LINKCOLOR:I

    and-int/2addr v8, v9

    if-eqz v8, :cond_0

    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->paintToUpdate:[Landroid/graphics/Paint;

    aget-object v8, v8, v0

    instance-of v8, v8, Landroid/text/TextPaint;

    if-eqz v8, :cond_0

    .line 145
    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->paintToUpdate:[Landroid/graphics/Paint;

    aget-object v8, v8, v0

    check-cast v8, Landroid/text/TextPaint;

    iput p1, v8, Landroid/text/TextPaint;->linkColor:I

    .line 143
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 147
    :cond_0
    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->paintToUpdate:[Landroid/graphics/Paint;

    aget-object v8, v8, v0

    invoke-virtual {v8, p1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 151
    .end local v0    # "a":I
    :cond_1
    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->drawablesToUpdate:[Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_6

    .line 152
    const/4 v0, 0x0

    .restart local v0    # "a":I
    :goto_2
    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->drawablesToUpdate:[Landroid/graphics/drawable/Drawable;

    array-length v8, v8

    if-ge v0, v8, :cond_6

    .line 153
    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->drawablesToUpdate:[Landroid/graphics/drawable/Drawable;

    aget-object v8, v8, v0

    if-nez v8, :cond_2

    .line 152
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 156
    :cond_2
    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->drawablesToUpdate:[Landroid/graphics/drawable/Drawable;

    aget-object v8, v8, v0

    instance-of v8, v8, Lorg/telegram/ui/Components/CombinedDrawable;

    if-eqz v8, :cond_4

    .line 157
    iget v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v9, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    and-int/2addr v8, v9

    if-eqz v8, :cond_3

    .line 158
    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->drawablesToUpdate:[Landroid/graphics/drawable/Drawable;

    aget-object v8, v8, v0

    check-cast v8, Lorg/telegram/ui/Components/CombinedDrawable;

    invoke-virtual {v8}, Lorg/telegram/ui/Components/CombinedDrawable;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    new-instance v9, Landroid/graphics/PorterDuffColorFilter;

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v9, p1, v10}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_3

    .line 160
    :cond_3
    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->drawablesToUpdate:[Landroid/graphics/drawable/Drawable;

    aget-object v8, v8, v0

    check-cast v8, Lorg/telegram/ui/Components/CombinedDrawable;

    invoke-virtual {v8}, Lorg/telegram/ui/Components/CombinedDrawable;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    new-instance v9, Landroid/graphics/PorterDuffColorFilter;

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v9, p1, v10}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_3

    .line 162
    :cond_4
    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->drawablesToUpdate:[Landroid/graphics/drawable/Drawable;

    aget-object v8, v8, v0

    instance-of v8, v8, Lorg/telegram/ui/Components/AvatarDrawable;

    if-eqz v8, :cond_5

    .line 163
    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->drawablesToUpdate:[Landroid/graphics/drawable/Drawable;

    aget-object v8, v8, v0

    check-cast v8, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v8, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->setColor(I)V

    goto :goto_3

    .line 165
    :cond_5
    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->drawablesToUpdate:[Landroid/graphics/drawable/Drawable;

    aget-object v8, v8, v0

    new-instance v9, Landroid/graphics/PorterDuffColorFilter;

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v9, p1, v10}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_3

    .line 169
    .end local v0    # "a":I
    :cond_6
    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    if-eqz v8, :cond_b

    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->listClasses:[Ljava/lang/Class;

    if-nez v8, :cond_b

    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->listClassesFieldName:[Ljava/lang/String;

    if-nez v8, :cond_b

    .line 170
    iget v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v9, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    and-int/2addr v8, v9

    if-eqz v8, :cond_7

    iget v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v9, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    and-int/2addr v8, v9

    if-eqz v8, :cond_b

    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->currentKey:Ljava/lang/String;

    iget-object v9, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 171
    :cond_7
    iget v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v9, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    and-int/2addr v8, v9

    if-eqz v8, :cond_8

    .line 172
    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    invoke-virtual {v8, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 174
    :cond_8
    iget v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v9, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    and-int/2addr v8, v9

    if-eqz v8, :cond_b

    .line 175
    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 176
    .local v3, "drawable":Landroid/graphics/drawable/Drawable;
    instance-of v8, v3, Lorg/telegram/ui/Components/CombinedDrawable;

    if-eqz v8, :cond_9

    .line 177
    iget v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v9, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_DRAWABLESELECTEDSTATE:I

    and-int/2addr v8, v9

    if-eqz v8, :cond_26

    .line 178
    check-cast v3, Lorg/telegram/ui/Components/CombinedDrawable;

    .end local v3    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v3}, Lorg/telegram/ui/Components/CombinedDrawable;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 183
    .restart local v3    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_9
    :goto_4
    if-eqz v3, :cond_b

    .line 184
    instance-of v8, v3, Landroid/graphics/drawable/StateListDrawable;

    if-nez v8, :cond_a

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x15

    if-lt v8, v9, :cond_28

    instance-of v8, v3, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v8, :cond_28

    .line 185
    :cond_a
    iget v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v9, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_DRAWABLESELECTEDSTATE:I

    and-int/2addr v8, v9

    if-eqz v8, :cond_27

    const/4 v8, 0x1

    :goto_5
    invoke-static {v3, p1, v8}, Lorg/telegram/ui/ActionBar/Theme;->setSelectorDrawableColor(Landroid/graphics/drawable/Drawable;IZ)V

    .line 193
    .end local v3    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_b
    :goto_6
    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    instance-of v8, v8, Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz v8, :cond_17

    .line 194
    iget v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v9, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    and-int/2addr v8, v9

    if-eqz v8, :cond_c

    .line 195
    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    check-cast v8, Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v9, 0x0

    invoke-virtual {v8, p1, v9}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    .line 197
    :cond_c
    iget v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v9, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    and-int/2addr v8, v9

    if-eqz v8, :cond_d

    .line 198
    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    check-cast v8, Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v8, p1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleColor(I)V

    .line 200
    :cond_d
    iget v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v9, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    and-int/2addr v8, v9

    if-eqz v8, :cond_e

    .line 201
    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    check-cast v8, Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v9, 0x0

    invoke-virtual {v8, p1, v9}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(IZ)V

    .line 203
    :cond_e
    iget v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v9, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_AM_SELECTORCOLOR:I

    and-int/2addr v8, v9

    if-eqz v8, :cond_f

    .line 204
    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    check-cast v8, Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v9, 0x1

    invoke-virtual {v8, p1, v9}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(IZ)V

    .line 206
    :cond_f
    iget v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v9, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_AM_ITEMSCOLOR:I

    and-int/2addr v8, v9

    if-eqz v8, :cond_10

    .line 207
    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    check-cast v8, Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v9, 0x1

    invoke-virtual {v8, p1, v9}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    .line 209
    :cond_10
    iget v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v9, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SUBTITLECOLOR:I

    and-int/2addr v8, v9

    if-eqz v8, :cond_11

    .line 210
    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    check-cast v8, Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v8, p1}, Lorg/telegram/ui/ActionBar/ActionBar;->setSubtitleColor(I)V

    .line 212
    :cond_11
    iget v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v9, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_AM_BACKGROUND:I

    and-int/2addr v8, v9

    if-eqz v8, :cond_12

    .line 213
    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    check-cast v8, Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v8, p1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionModeColor(I)V

    .line 215
    :cond_12
    iget v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v9, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_AM_TOPBACKGROUND:I

    and-int/2addr v8, v9

    if-eqz v8, :cond_13

    .line 216
    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    check-cast v8, Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v8, p1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionModeTopColor(I)V

    .line 218
    :cond_13
    iget v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v9, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SEARCHPLACEHOLDER:I

    and-int/2addr v8, v9

    if-eqz v8, :cond_14

    .line 219
    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    check-cast v8, Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v9, 0x1

    invoke-virtual {v8, p1, v9}, Lorg/telegram/ui/ActionBar/ActionBar;->setSearchTextColor(IZ)V

    .line 221
    :cond_14
    iget v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v9, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SEARCH:I

    and-int/2addr v8, v9

    if-eqz v8, :cond_15

    .line 222
    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    check-cast v8, Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v9, 0x0

    invoke-virtual {v8, p1, v9}, Lorg/telegram/ui/ActionBar/ActionBar;->setSearchTextColor(IZ)V

    .line 224
    :cond_15
    iget v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v9, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SUBMENUITEM:I

    and-int/2addr v8, v9

    if-eqz v8, :cond_16

    .line 225
    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    check-cast v8, Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v8, p1}, Lorg/telegram/ui/ActionBar/ActionBar;->setPopupItemsColor(I)V

    .line 227
    :cond_16
    iget v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v9, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SUBMENUBACKGROUND:I

    and-int/2addr v8, v9

    if-eqz v8, :cond_17

    .line 228
    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    check-cast v8, Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v8, p1}, Lorg/telegram/ui/ActionBar/ActionBar;->setPopupBackgroundColor(I)V

    .line 231
    :cond_17
    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    instance-of v8, v8, Lorg/telegram/ui/Components/EmptyTextProgressView;

    if-eqz v8, :cond_18

    .line 232
    iget v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v9, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    and-int/2addr v8, v9

    if-eqz v8, :cond_29

    .line 233
    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    check-cast v8, Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {v8, p1}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setTextColor(I)V

    .line 238
    :cond_18
    :goto_7
    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    instance-of v8, v8, Lorg/telegram/ui/Components/RadialProgressView;

    if-eqz v8, :cond_2a

    .line 239
    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    check-cast v8, Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {v8, p1}, Lorg/telegram/ui/Components/RadialProgressView;->setProgressColor(I)V

    .line 249
    :cond_19
    :goto_8
    iget v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v9, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    and-int/2addr v8, v9

    if-eqz v8, :cond_1b

    .line 250
    iget v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v9, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    and-int/2addr v8, v9

    if-eqz v8, :cond_1a

    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    if-eqz v8, :cond_1b

    iget v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v9, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    and-int/2addr v8, v9

    if-eqz v8, :cond_1b

    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->currentKey:Ljava/lang/String;

    iget-object v9, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1b

    .line 251
    :cond_1a
    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    instance-of v8, v8, Landroid/widget/TextView;

    if-eqz v8, :cond_2d

    .line 252
    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    check-cast v8, Landroid/widget/TextView;

    invoke-virtual {v8, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 262
    :cond_1b
    :goto_9
    iget v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v9, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CURSORCOLOR:I

    and-int/2addr v8, v9

    if-eqz v8, :cond_1c

    .line 263
    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    instance-of v8, v8, Lorg/telegram/ui/Components/EditTextBoldCursor;

    if-eqz v8, :cond_1c

    .line 264
    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    check-cast v8, Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v8, p1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    .line 267
    :cond_1c
    iget v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v9, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_HINTTEXTCOLOR:I

    and-int/2addr v8, v9

    if-eqz v8, :cond_1d

    .line 268
    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    instance-of v8, v8, Lorg/telegram/ui/Components/EditTextBoldCursor;

    if-eqz v8, :cond_30

    .line 269
    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    check-cast v8, Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v8, p1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setHintColor(I)V

    .line 274
    :cond_1d
    :goto_a
    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    if-eqz v8, :cond_1e

    iget v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v9, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SERVICEBACKGROUND:I

    and-int/2addr v8, v9

    if-eqz v8, :cond_1e

    .line 275
    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 276
    .local v1, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1e

    .line 277
    sget-object v8, Lorg/telegram/ui/ActionBar/Theme;->colorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v1, v8}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 280
    .end local v1    # "background":Landroid/graphics/drawable/Drawable;
    :cond_1e
    iget v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v9, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    and-int/2addr v8, v9

    if-eqz v8, :cond_21

    .line 281
    iget v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v9, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    and-int/2addr v8, v9

    if-eqz v8, :cond_1f

    iget v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v9, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    and-int/2addr v8, v9

    if-eqz v8, :cond_21

    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->currentKey:Ljava/lang/String;

    iget-object v9, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_21

    .line 282
    :cond_1f
    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    instance-of v8, v8, Landroid/widget/ImageView;

    if-eqz v8, :cond_33

    .line 283
    iget v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v9, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_USEBACKGROUNDDRAWABLE:I

    and-int/2addr v8, v9

    if-eqz v8, :cond_32

    .line 284
    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    check-cast v8, Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 285
    .restart local v3    # "drawable":Landroid/graphics/drawable/Drawable;
    instance-of v8, v3, Landroid/graphics/drawable/StateListDrawable;

    if-nez v8, :cond_20

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x15

    if-lt v8, v9, :cond_21

    instance-of v8, v3, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v8, :cond_21

    .line 286
    :cond_20
    iget v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v9, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_DRAWABLESELECTEDSTATE:I

    and-int/2addr v8, v9

    if-eqz v8, :cond_31

    const/4 v8, 0x1

    :goto_b
    invoke-static {v3, p1, v8}, Lorg/telegram/ui/ActionBar/Theme;->setSelectorDrawableColor(Landroid/graphics/drawable/Drawable;IZ)V

    .line 296
    .end local v3    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_21
    :goto_c
    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    instance-of v8, v8, Landroid/widget/ScrollView;

    if-eqz v8, :cond_22

    .line 297
    iget v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v9, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    and-int/2addr v8, v9

    if-eqz v8, :cond_22

    .line 298
    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    check-cast v8, Landroid/widget/ScrollView;

    invoke-static {v8, p1}, Lorg/telegram/messenger/AndroidUtilities;->setScrollViewEdgeEffectColor(Landroid/widget/ScrollView;I)V

    .line 301
    :cond_22
    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    instance-of v8, v8, Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v8, :cond_37

    .line 302
    iget-object v6, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    check-cast v6, Lorg/telegram/ui/Components/RecyclerListView;

    .line 303
    .local v6, "recyclerListView":Lorg/telegram/ui/Components/RecyclerListView;
    iget v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v9, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    and-int/2addr v8, v9

    if-eqz v8, :cond_23

    .line 304
    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->currentKey:Ljava/lang/String;

    const-string/jumbo v9, "listSelectorSDK21"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_23

    .line 305
    invoke-virtual {v6, p1}, Lorg/telegram/ui/Components/RecyclerListView;->setListSelectorColor(I)V

    .line 308
    :cond_23
    iget v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v9, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_FASTSCROLL:I

    and-int/2addr v8, v9

    if-eqz v8, :cond_24

    .line 309
    invoke-virtual {v6}, Lorg/telegram/ui/Components/RecyclerListView;->updateFastScrollColors()V

    .line 311
    :cond_24
    iget v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v9, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    and-int/2addr v8, v9

    if-eqz v8, :cond_25

    .line 312
    invoke-virtual {v6, p1}, Lorg/telegram/ui/Components/RecyclerListView;->setGlowColor(I)V

    .line 314
    :cond_25
    iget v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v9, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SECTIONS:I

    and-int/2addr v8, v9

    if-eqz v8, :cond_36

    .line 315
    invoke-virtual {v6}, Lorg/telegram/ui/Components/RecyclerListView;->getHeaders()Ljava/util/ArrayList;

    move-result-object v5

    .line 316
    .local v5, "headers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz v5, :cond_34

    .line 317
    const/4 v0, 0x0

    .restart local v0    # "a":I
    :goto_d
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v0, v8, :cond_34

    .line 318
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    invoke-direct {p0, v8, p1}, Lorg/telegram/ui/ActionBar/ThemeDescription;->processViewColor(Landroid/view/View;I)V

    .line 317
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 180
    .end local v0    # "a":I
    .end local v5    # "headers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v6    # "recyclerListView":Lorg/telegram/ui/Components/RecyclerListView;
    .restart local v3    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_26
    check-cast v3, Lorg/telegram/ui/Components/CombinedDrawable;

    .end local v3    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v3}, Lorg/telegram/ui/Components/CombinedDrawable;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .restart local v3    # "drawable":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_4

    .line 185
    :cond_27
    const/4 v8, 0x0

    goto/16 :goto_5

    .line 187
    :cond_28
    new-instance v8, Landroid/graphics/PorterDuffColorFilter;

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v8, p1, v9}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v8}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto/16 :goto_6

    .line 234
    .end local v3    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_29
    iget v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v9, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_PROGRESSBAR:I

    and-int/2addr v8, v9

    if-eqz v8, :cond_18

    .line 235
    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    check-cast v8, Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {v8, p1}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setProgressBarColor(I)V

    goto/16 :goto_7

    .line 240
    :cond_2a
    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    instance-of v8, v8, Lorg/telegram/ui/Components/LineProgressView;

    if-eqz v8, :cond_2c

    .line 241
    iget v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v9, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_PROGRESSBAR:I

    and-int/2addr v8, v9

    if-eqz v8, :cond_2b

    .line 242
    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    check-cast v8, Lorg/telegram/ui/Components/LineProgressView;

    invoke-virtual {v8, p1}, Lorg/telegram/ui/Components/LineProgressView;->setProgressColor(I)V

    goto/16 :goto_8

    .line 244
    :cond_2b
    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    check-cast v8, Lorg/telegram/ui/Components/LineProgressView;

    invoke-virtual {v8, p1}, Lorg/telegram/ui/Components/LineProgressView;->setBackColor(I)V

    goto/16 :goto_8

    .line 246
    :cond_2c
    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    instance-of v8, v8, Lorg/telegram/ui/Components/ContextProgressView;

    if-eqz v8, :cond_19

    .line 247
    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    check-cast v8, Lorg/telegram/ui/Components/ContextProgressView;

    invoke-virtual {v8}, Lorg/telegram/ui/Components/ContextProgressView;->updateColors()V

    goto/16 :goto_8

    .line 253
    :cond_2d
    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    instance-of v8, v8, Lorg/telegram/ui/Components/NumberTextView;

    if-eqz v8, :cond_2e

    .line 254
    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    check-cast v8, Lorg/telegram/ui/Components/NumberTextView;

    invoke-virtual {v8, p1}, Lorg/telegram/ui/Components/NumberTextView;->setTextColor(I)V

    goto/16 :goto_9

    .line 255
    :cond_2e
    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    instance-of v8, v8, Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v8, :cond_2f

    .line 256
    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    check-cast v8, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v8, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    goto/16 :goto_9

    .line 257
    :cond_2f
    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    instance-of v8, v8, Lorg/telegram/ui/Components/ChatBigEmptyView;

    if-eqz v8, :cond_1b

    .line 258
    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    check-cast v8, Lorg/telegram/ui/Components/ChatBigEmptyView;

    invoke-virtual {v8, p1}, Lorg/telegram/ui/Components/ChatBigEmptyView;->setTextColor(I)V

    goto/16 :goto_9

    .line 270
    :cond_30
    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    instance-of v8, v8, Landroid/widget/EditText;

    if-eqz v8, :cond_1d

    .line 271
    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    check-cast v8, Landroid/widget/EditText;

    invoke-virtual {v8, p1}, Landroid/widget/EditText;->setHintTextColor(I)V

    goto/16 :goto_a

    .line 286
    .restart local v3    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_31
    const/4 v8, 0x0

    goto/16 :goto_b

    .line 289
    .end local v3    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_32
    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    check-cast v8, Landroid/widget/ImageView;

    new-instance v9, Landroid/graphics/PorterDuffColorFilter;

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v9, p1, v10}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto/16 :goto_c

    .line 291
    :cond_33
    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    instance-of v8, v8, Lorg/telegram/ui/Components/BackupImageView;

    if-eqz v8, :cond_21

    goto/16 :goto_c

    .line 321
    .restart local v5    # "headers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v6    # "recyclerListView":Lorg/telegram/ui/Components/RecyclerListView;
    :cond_34
    invoke-virtual {v6}, Lorg/telegram/ui/Components/RecyclerListView;->getHeadersCache()Ljava/util/ArrayList;

    move-result-object v5

    .line 322
    if-eqz v5, :cond_35

    .line 323
    const/4 v0, 0x0

    .restart local v0    # "a":I
    :goto_e
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v0, v8, :cond_35

    .line 324
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    invoke-direct {p0, v8, p1}, Lorg/telegram/ui/ActionBar/ThemeDescription;->processViewColor(Landroid/view/View;I)V

    .line 323
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 327
    .end local v0    # "a":I
    :cond_35
    invoke-virtual {v6}, Lorg/telegram/ui/Components/RecyclerListView;->getPinnedHeader()Landroid/view/View;

    move-result-object v4

    .line 328
    .local v4, "header":Landroid/view/View;
    if-eqz v4, :cond_36

    .line 329
    invoke-direct {p0, v4, p1}, Lorg/telegram/ui/ActionBar/ThemeDescription;->processViewColor(Landroid/view/View;I)V

    .line 339
    .end local v4    # "header":Landroid/view/View;
    .end local v5    # "headers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v6    # "recyclerListView":Lorg/telegram/ui/Components/RecyclerListView;
    :cond_36
    :goto_f
    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->listClasses:[Ljava/lang/Class;

    if-eqz v8, :cond_3a

    .line 340
    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    instance-of v8, v8, Landroid/view/ViewGroup;

    if-eqz v8, :cond_39

    .line 341
    iget-object v7, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    check-cast v7, Landroid/view/ViewGroup;

    .line 342
    .local v7, "viewGroup":Landroid/view/ViewGroup;
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 343
    .local v2, "count":I
    const/4 v0, 0x0

    .restart local v0    # "a":I
    :goto_10
    if-ge v0, v2, :cond_39

    .line 344
    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-direct {p0, v8, p1}, Lorg/telegram/ui/ActionBar/ThemeDescription;->processViewColor(Landroid/view/View;I)V

    .line 343
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 332
    .end local v0    # "a":I
    .end local v2    # "count":I
    .end local v7    # "viewGroup":Landroid/view/ViewGroup;
    :cond_37
    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    if-eqz v8, :cond_36

    .line 333
    iget v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v9, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    and-int/2addr v8, v9

    if-eqz v8, :cond_38

    .line 334
    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    const/4 v9, 0x0

    invoke-static {v9}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_f

    .line 335
    :cond_38
    iget v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v9, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTORWHITE:I

    and-int/2addr v8, v9

    if-eqz v8, :cond_36

    .line 336
    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    const/4 v9, 0x1

    invoke-static {v9}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_f

    .line 347
    :cond_39
    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    invoke-direct {p0, v8, p1}, Lorg/telegram/ui/ActionBar/ThemeDescription;->processViewColor(Landroid/view/View;I)V

    .line 349
    :cond_3a
    iput p1, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->currentColor:I

    .line 350
    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->delegate:Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;

    if-eqz v8, :cond_3b

    .line 351
    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->delegate:Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;

    invoke-interface {v8, p1}, Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;->didSetColor(I)V

    .line 353
    :cond_3b
    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    if-eqz v8, :cond_3c

    .line 354
    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->invalidate()V

    .line 356
    :cond_3c
    return-void
.end method

.method public setDefaultColor()V
    .locals 2

    .prologue
    .line 545
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->currentKey:Ljava/lang/String;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getDefaultColor(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/ActionBar/ThemeDescription;->setColor(IZ)V

    .line 546
    return-void
.end method

.method public setPreviousColor()V
    .locals 3

    .prologue
    .line 549
    iget v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->previousColor:I

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->previousIsDefault:[Z

    const/4 v2, 0x0

    aget-boolean v1, v1, v2

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/ActionBar/ThemeDescription;->setColor(IZ)V

    .line 550
    return-void
.end method

.method public startEditing()V
    .locals 2

    .prologue
    .line 533
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->currentKey:Ljava/lang/String;

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->previousIsDefault:[Z

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;[Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->previousColor:I

    iput v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->currentColor:I

    .line 534
    return-void
.end method
