.class public Lorg/telegram/ui/Components/LayoutHelper;
.super Ljava/lang/Object;
.source "LayoutHelper.java"


# static fields
.field public static final MATCH_PARENT:I = -0x1

.field public static final WRAP_CONTENT:I = -0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;
    .locals 3
    .param p0, "width"    # I
    .param p1, "height"    # F

    .prologue
    .line 42
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    int-to-float v1, p0

    invoke-static {v1}, Lorg/telegram/ui/Components/LayoutHelper;->getSize(F)I

    move-result v1

    invoke-static {p1}, Lorg/telegram/ui/Components/LayoutHelper;->getSize(F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public static createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;
    .locals 5
    .param p0, "width"    # I
    .param p1, "height"    # F
    .param p2, "gravity"    # I
    .param p3, "leftMargin"    # F
    .param p4, "topMargin"    # F
    .param p5, "rightMargin"    # F
    .param p6, "bottomMargin"    # F

    .prologue
    .line 32
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    int-to-float v1, p0

    invoke-static {v1}, Lorg/telegram/ui/Components/LayoutHelper;->getSize(F)I

    move-result v1

    invoke-static {p1}, Lorg/telegram/ui/Components/LayoutHelper;->getSize(F)I

    move-result v2

    invoke-direct {v0, v1, v2, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 33
    .local v0, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {p6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 34
    return-object v0
.end method

.method public static createFrame(III)Landroid/widget/FrameLayout$LayoutParams;
    .locals 3
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "gravity"    # I

    .prologue
    .line 38
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    int-to-float v1, p0

    invoke-static {v1}, Lorg/telegram/ui/Components/LayoutHelper;->getSize(F)I

    move-result v1

    int-to-float v2, p1

    invoke-static {v2}, Lorg/telegram/ui/Components/LayoutHelper;->getSize(F)I

    move-result v2

    invoke-direct {v0, v1, v2, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    return-object v0
.end method

.method public static createLinear(II)Landroid/widget/LinearLayout$LayoutParams;
    .locals 3
    .param p0, "width"    # I
    .param p1, "height"    # I

    .prologue
    .line 131
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    int-to-float v1, p0

    invoke-static {v1}, Lorg/telegram/ui/Components/LayoutHelper;->getSize(F)I

    move-result v1

    int-to-float v2, p1

    invoke-static {v2}, Lorg/telegram/ui/Components/LayoutHelper;->getSize(F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public static createLinear(IIF)Landroid/widget/LinearLayout$LayoutParams;
    .locals 3
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "weight"    # F

    .prologue
    .line 127
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    int-to-float v1, p0

    invoke-static {v1}, Lorg/telegram/ui/Components/LayoutHelper;->getSize(F)I

    move-result v1

    int-to-float v2, p1

    invoke-static {v2}, Lorg/telegram/ui/Components/LayoutHelper;->getSize(F)I

    move-result v2

    invoke-direct {v0, v1, v2, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    return-object v0
.end method

.method public static createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;
    .locals 5
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "leftMargin"    # F
    .param p3, "topMargin"    # F
    .param p4, "rightMargin"    # F
    .param p5, "bottomMargin"    # F

    .prologue
    .line 109
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    int-to-float v1, p0

    invoke-static {v1}, Lorg/telegram/ui/Components/LayoutHelper;->getSize(F)I

    move-result v1

    int-to-float v2, p1

    invoke-static {v2}, Lorg/telegram/ui/Components/LayoutHelper;->getSize(F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 110
    .local v0, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 111
    return-object v0
.end method

.method public static createLinear(IIFI)Landroid/widget/LinearLayout$LayoutParams;
    .locals 3
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "weight"    # F
    .param p3, "gravity"    # I

    .prologue
    .line 115
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    int-to-float v1, p0

    invoke-static {v1}, Lorg/telegram/ui/Components/LayoutHelper;->getSize(F)I

    move-result v1

    int-to-float v2, p1

    invoke-static {v2}, Lorg/telegram/ui/Components/LayoutHelper;->getSize(F)I

    move-result v2

    invoke-direct {v0, v1, v2, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 116
    .local v0, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iput p3, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 117
    return-object v0
.end method

.method public static createLinear(IIFIIII)Landroid/widget/LinearLayout$LayoutParams;
    .locals 5
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "weight"    # F
    .param p3, "leftMargin"    # I
    .param p4, "topMargin"    # I
    .param p5, "rightMargin"    # I
    .param p6, "bottomMargin"    # I

    .prologue
    .line 96
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    int-to-float v1, p0

    invoke-static {v1}, Lorg/telegram/ui/Components/LayoutHelper;->getSize(F)I

    move-result v1

    int-to-float v2, p1

    invoke-static {v2}, Lorg/telegram/ui/Components/LayoutHelper;->getSize(F)I

    move-result v2

    invoke-direct {v0, v1, v2, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 97
    .local v0, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    int-to-float v1, p3

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v2, p4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v3, p5

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v4, p6

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 98
    return-object v0
.end method

.method public static createLinear(IIFIIIII)Landroid/widget/LinearLayout$LayoutParams;
    .locals 5
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "weight"    # F
    .param p3, "gravity"    # I
    .param p4, "leftMargin"    # I
    .param p5, "topMargin"    # I
    .param p6, "rightMargin"    # I
    .param p7, "bottomMargin"    # I

    .prologue
    .line 89
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    int-to-float v1, p0

    invoke-static {v1}, Lorg/telegram/ui/Components/LayoutHelper;->getSize(F)I

    move-result v1

    int-to-float v2, p1

    invoke-static {v2}, Lorg/telegram/ui/Components/LayoutHelper;->getSize(F)I

    move-result v2

    invoke-direct {v0, v1, v2, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 90
    .local v0, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    int-to-float v1, p4

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v2, p5

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v3, p6

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v4, p7

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 91
    iput p3, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 92
    return-object v0
.end method

.method public static createLinear(III)Landroid/widget/LinearLayout$LayoutParams;
    .locals 3
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "gravity"    # I

    .prologue
    .line 121
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    int-to-float v1, p0

    invoke-static {v1}, Lorg/telegram/ui/Components/LayoutHelper;->getSize(F)I

    move-result v1

    int-to-float v2, p1

    invoke-static {v2}, Lorg/telegram/ui/Components/LayoutHelper;->getSize(F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 122
    .local v0, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iput p2, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 123
    return-object v0
.end method

.method public static createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;
    .locals 5
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "gravity"    # I
    .param p3, "leftMargin"    # I
    .param p4, "topMargin"    # I
    .param p5, "rightMargin"    # I
    .param p6, "bottomMargin"    # I

    .prologue
    .line 102
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    int-to-float v1, p0

    invoke-static {v1}, Lorg/telegram/ui/Components/LayoutHelper;->getSize(F)I

    move-result v1

    int-to-float v2, p1

    invoke-static {v2}, Lorg/telegram/ui/Components/LayoutHelper;->getSize(F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 103
    .local v0, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    int-to-float v1, p3

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v2, p4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v3, p5

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v4, p6

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 104
    iput p2, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 105
    return-object v0
.end method

.method public static createRelative(FFIIIIII)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 9
    .param p0, "width"    # F
    .param p1, "height"    # F
    .param p2, "leftMargin"    # I
    .param p3, "topMargin"    # I
    .param p4, "rightMargin"    # I
    .param p5, "bottomMargin"    # I
    .param p6, "alignRelative"    # I
    .param p7, "anchorRelative"    # I

    .prologue
    .line 69
    const/4 v6, -0x1

    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v7, p6

    move/from16 v8, p7

    invoke-static/range {v0 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createRelative(FFIIIIIII)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public static createRelative(FFIIIIIII)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 3
    .param p0, "width"    # F
    .param p1, "height"    # F
    .param p2, "leftMargin"    # I
    .param p3, "topMargin"    # I
    .param p4, "rightMargin"    # I
    .param p5, "bottomMargin"    # I
    .param p6, "alignParent"    # I
    .param p7, "alignRelative"    # I
    .param p8, "anchorRelative"    # I

    .prologue
    .line 46
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {p0}, Lorg/telegram/ui/Components/LayoutHelper;->getSize(F)I

    move-result v1

    invoke-static {p1}, Lorg/telegram/ui/Components/LayoutHelper;->getSize(F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 47
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    if-ltz p6, :cond_0

    .line 48
    invoke-virtual {v0, p6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 50
    :cond_0
    if-ltz p7, :cond_1

    if-ltz p8, :cond_1

    .line 51
    invoke-virtual {v0, p7, p8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 53
    :cond_1
    int-to-float v1, p2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 54
    int-to-float v1, p3

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 55
    int-to-float v1, p4

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 56
    int-to-float v1, p5

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 57
    return-object v0
.end method

.method public static createRelative(II)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 9
    .param p0, "width"    # I
    .param p1, "height"    # I

    .prologue
    const/4 v6, -0x1

    const/4 v2, 0x0

    .line 77
    int-to-float v0, p0

    int-to-float v1, p1

    move v3, v2

    move v4, v2

    move v5, v2

    move v7, v6

    move v8, v6

    invoke-static/range {v0 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createRelative(FFIIIIIII)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public static createRelative(III)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 9
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "alignParent"    # I

    .prologue
    const/4 v7, -0x1

    const/4 v2, 0x0

    .line 81
    int-to-float v0, p0

    int-to-float v1, p1

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, p2

    move v8, v7

    invoke-static/range {v0 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createRelative(FFIIIIIII)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public static createRelative(IIII)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 9
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "alignRelative"    # I
    .param p3, "anchorRelative"    # I

    .prologue
    const/4 v2, 0x0

    .line 85
    int-to-float v0, p0

    int-to-float v1, p1

    const/4 v6, -0x1

    move v3, v2

    move v4, v2

    move v5, v2

    move v7, p2

    move v8, p3

    invoke-static/range {v0 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createRelative(FFIIIIIII)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public static createRelative(IIIII)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 9
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "alignParent"    # I
    .param p3, "alignRelative"    # I
    .param p4, "anchorRelative"    # I

    .prologue
    const/4 v2, 0x0

    .line 73
    int-to-float v0, p0

    int-to-float v1, p1

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, p2

    move v7, p3

    move v8, p4

    invoke-static/range {v0 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createRelative(FFIIIIIII)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public static createRelative(IIIIII)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 9
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "leftMargin"    # I
    .param p3, "topMargin"    # I
    .param p4, "rightMargin"    # I
    .param p5, "bottomMargin"    # I

    .prologue
    const/4 v6, -0x1

    .line 61
    int-to-float v0, p0

    int-to-float v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v7, v6

    move v8, v6

    invoke-static/range {v0 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createRelative(FFIIIIIII)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public static createRelative(IIIIIII)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 9
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "leftMargin"    # I
    .param p3, "topMargin"    # I
    .param p4, "rightMargin"    # I
    .param p5, "bottomMargin"    # I
    .param p6, "alignParent"    # I

    .prologue
    const/4 v7, -0x1

    .line 65
    int-to-float v0, p0

    int-to-float v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v8, v7

    invoke-static/range {v0 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createRelative(FFIIIIIII)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public static createScroll(III)Landroid/widget/FrameLayout$LayoutParams;
    .locals 3
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "gravity"    # I

    .prologue
    .line 28
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    int-to-float v1, p0

    invoke-static {v1}, Lorg/telegram/ui/Components/LayoutHelper;->getSize(F)I

    move-result v1

    int-to-float v2, p1

    invoke-static {v2}, Lorg/telegram/ui/Components/LayoutHelper;->getSize(F)I

    move-result v2

    invoke-direct {v0, v1, v2, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    return-object v0
.end method

.method private static getSize(F)I
    .locals 1
    .param p0, "size"    # F

    .prologue
    .line 24
    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gez v0, :cond_0

    .end local p0    # "size":F
    :goto_0
    float-to-int v0, p0

    return v0

    .restart local p0    # "size":F
    :cond_0
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float p0, v0

    goto :goto_0
.end method
