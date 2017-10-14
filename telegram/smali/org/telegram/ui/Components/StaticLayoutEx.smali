.class public Lorg/telegram/ui/Components/StaticLayoutEx;
.super Ljava/lang/Object;
.source "StaticLayoutEx.java"


# static fields
.field private static final TEXT_DIRS_CLASS:Ljava/lang/String; = "android.text.TextDirectionHeuristics"

.field private static final TEXT_DIR_CLASS:Ljava/lang/String; = "android.text.TextDirectionHeuristic"

.field private static final TEXT_DIR_FIRSTSTRONG_LTR:Ljava/lang/String; = "FIRSTSTRONG_LTR"

.field private static initialized:Z

.field private static sConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<",
            "Landroid/text/StaticLayout;",
            ">;"
        }
    .end annotation
.end field

.field private static sConstructorArgs:[Ljava/lang/Object;

.field private static sTextDirection:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createStaticLayout(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;II)Landroid/text/StaticLayout;
    .locals 18
    .param p0, "source"    # Ljava/lang/CharSequence;
    .param p1, "bufstart"    # I
    .param p2, "bufend"    # I
    .param p3, "paint"    # Landroid/text/TextPaint;
    .param p4, "outerWidth"    # I
    .param p5, "align"    # Landroid/text/Layout$Alignment;
    .param p6, "spacingMult"    # F
    .param p7, "spacingAdd"    # F
    .param p8, "includePad"    # Z
    .param p9, "ellipsize"    # Landroid/text/TextUtils$TruncateAt;
    .param p10, "ellipsisWidth"    # I
    .param p11, "maxLines"    # I

    .prologue
    .line 104
    const/4 v3, 0x1

    move/from16 v0, p11

    if-ne v0, v3, :cond_0

    .line 105
    move/from16 v0, p10

    int-to-float v3, v0

    :try_start_0
    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-static {v0, v1, v3, v6}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 106
    .local v4, "text":Ljava/lang/CharSequence;
    new-instance v3, Landroid/text/StaticLayout;

    const/4 v5, 0x0

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v6

    move-object/from16 v7, p3

    move/from16 v8, p4

    move-object/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    invoke-direct/range {v3 .. v12}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 140
    .end local v4    # "text":Ljava/lang/CharSequence;
    :goto_0
    return-object v3

    .line 109
    :cond_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    if-lt v3, v6, :cond_1

    .line 110
    const/4 v3, 0x0

    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v6

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p4

    invoke-static {v0, v3, v6, v1, v2}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    .line 111
    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    .line 112
    move/from16 v0, p7

    move/from16 v1, p6

    invoke-virtual {v3, v0, v1}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    .line 113
    move/from16 v0, p8

    invoke-virtual {v3, v0}, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    const/4 v6, 0x0

    .line 114
    invoke-virtual {v3, v6}, Landroid/text/StaticLayout$Builder;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    .line 115
    move/from16 v0, p10

    invoke-virtual {v3, v0}, Landroid/text/StaticLayout$Builder;->setEllipsizedWidth(I)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    const/4 v6, 0x1

    .line 116
    invoke-virtual {v3, v6}, Landroid/text/StaticLayout$Builder;->setBreakStrategy(I)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    const/4 v6, 0x1

    .line 117
    invoke-virtual {v3, v6}, Landroid/text/StaticLayout$Builder;->setHyphenationFrequency(I)Landroid/text/StaticLayout$Builder;

    move-result-object v14

    .line 118
    .local v14, "builder":Landroid/text/StaticLayout$Builder;
    invoke-virtual {v14}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object v5

    .line 122
    .end local v14    # "builder":Landroid/text/StaticLayout$Builder;
    .local v5, "layout":Landroid/text/StaticLayout;
    :goto_1
    invoke-virtual {v5}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v3

    move/from16 v0, p11

    if-gt v3, v0, :cond_2

    move-object v3, v5

    .line 123
    goto :goto_0

    .line 120
    .end local v5    # "layout":Landroid/text/StaticLayout;
    :cond_1
    new-instance v5, Landroid/text/StaticLayout;

    move-object/from16 v6, p0

    move-object/from16 v7, p3

    move/from16 v8, p4

    move-object/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    invoke-direct/range {v5 .. v12}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .restart local v5    # "layout":Landroid/text/StaticLayout;
    goto :goto_1

    .line 126
    :cond_2
    add-int/lit8 v3, p11, -0x1

    invoke-virtual {v5, v3}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v16

    .line 127
    .local v16, "left":F
    const/4 v3, 0x0

    cmpl-float v3, v16, v3

    if-eqz v3, :cond_3

    .line 128
    add-int/lit8 v3, p11, -0x1

    move/from16 v0, v16

    invoke-virtual {v5, v3, v0}, Landroid/text/StaticLayout;->getOffsetForHorizontal(IF)I

    move-result v17

    .line 132
    .local v17, "off":I
    :goto_2
    new-instance v7, Landroid/text/SpannableStringBuilder;

    const/4 v3, 0x0

    const/4 v6, 0x0

    add-int/lit8 v8, v17, -0x1

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    move-object/from16 v0, p0

    invoke-interface {v0, v3, v6}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-direct {v7, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 133
    .local v7, "stringBuilder":Landroid/text/SpannableStringBuilder;
    const-string/jumbo v3, "\u2026"

    invoke-virtual {v7, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 134
    new-instance v6, Landroid/text/StaticLayout;

    move-object/from16 v8, p3

    move/from16 v9, p4

    move-object/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p7

    move/from16 v13, p8

    invoke-direct/range {v6 .. v13}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object v3, v6

    goto/16 :goto_0

    .line 130
    .end local v7    # "stringBuilder":Landroid/text/SpannableStringBuilder;
    .end local v17    # "off":I
    :cond_3
    add-int/lit8 v3, p11, -0x1

    add-int/lit8 v6, p11, -0x1

    invoke-virtual {v5, v6}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v6

    invoke-virtual {v5, v3, v6}, Landroid/text/StaticLayout;->getOffsetForHorizontal(IF)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v17

    .restart local v17    # "off":I
    goto :goto_2

    .line 137
    .end local v5    # "layout":Landroid/text/StaticLayout;
    .end local v16    # "left":F
    .end local v17    # "off":I
    :catch_0
    move-exception v15

    .line 138
    .local v15, "e":Ljava/lang/Exception;
    invoke-static {v15}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 140
    const/4 v3, 0x0

    goto/16 :goto_0
.end method

.method public static createStaticLayout(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;II)Landroid/text/StaticLayout;
    .locals 12
    .param p0, "source"    # Ljava/lang/CharSequence;
    .param p1, "paint"    # Landroid/text/TextPaint;
    .param p2, "width"    # I
    .param p3, "align"    # Landroid/text/Layout$Alignment;
    .param p4, "spacingmult"    # F
    .param p5, "spacingadd"    # F
    .param p6, "includepad"    # Z
    .param p7, "ellipsize"    # Landroid/text/TextUtils$TruncateAt;
    .param p8, "ellipsisWidth"    # I
    .param p9, "maxLines"    # I

    .prologue
    .line 78
    const/4 v1, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    invoke-static/range {v0 .. v11}, Lorg/telegram/ui/Components/StaticLayoutEx;->createStaticLayout(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;II)Landroid/text/StaticLayout;

    move-result-object v0

    return-object v0
.end method

.method public static init()V
    .locals 7

    .prologue
    .line 36
    sget-boolean v5, Lorg/telegram/ui/Components/StaticLayoutEx;->initialized:Z

    if-eqz v5, :cond_0

    .line 75
    .local v3, "textDirClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return-void

    .line 42
    .end local v3    # "textDirClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    :try_start_0
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x12

    if-lt v5, v6, :cond_1

    .line 43
    const-class v3, Landroid/text/TextDirectionHeuristic;

    .line 44
    .restart local v3    # "textDirClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v5, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    sput-object v5, Lorg/telegram/ui/Components/StaticLayoutEx;->sTextDirection:Ljava/lang/Object;

    .line 52
    :goto_1
    const/16 v5, 0xd

    new-array v2, v5, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/CharSequence;

    aput-object v6, v2, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v2, v5

    const/4 v5, 0x2

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v2, v5

    const/4 v5, 0x3

    const-class v6, Landroid/text/TextPaint;

    aput-object v6, v2, v5

    const/4 v5, 0x4

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v2, v5

    const/4 v5, 0x5

    const-class v6, Landroid/text/Layout$Alignment;

    aput-object v6, v2, v5

    const/4 v5, 0x6

    aput-object v3, v2, v5

    const/4 v5, 0x7

    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v6, v2, v5

    const/16 v5, 0x8

    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v6, v2, v5

    const/16 v5, 0x9

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v2, v5

    const/16 v5, 0xa

    const-class v6, Landroid/text/TextUtils$TruncateAt;

    aput-object v6, v2, v5

    const/16 v5, 0xb

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v2, v5

    const/16 v5, 0xc

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v2, v5

    .line 68
    .local v2, "signature":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const-class v5, Landroid/text/StaticLayout;

    invoke-virtual {v5, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    sput-object v5, Lorg/telegram/ui/Components/StaticLayoutEx;->sConstructor:Ljava/lang/reflect/Constructor;

    .line 69
    sget-object v5, Lorg/telegram/ui/Components/StaticLayoutEx;->sConstructor:Ljava/lang/reflect/Constructor;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 70
    array-length v5, v2

    new-array v5, v5, [Ljava/lang/Object;

    sput-object v5, Lorg/telegram/ui/Components/StaticLayoutEx;->sConstructorArgs:[Ljava/lang/Object;

    .line 71
    const/4 v5, 0x1

    sput-boolean v5, Lorg/telegram/ui/Components/StaticLayoutEx;->initialized:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 72
    .end local v2    # "signature":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 46
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v3    # "textDirClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    :try_start_1
    const-class v5, Lorg/telegram/ui/Components/StaticLayoutEx;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 47
    .local v1, "loader":Ljava/lang/ClassLoader;
    const-string/jumbo v5, "android.text.TextDirectionHeuristic"

    invoke-virtual {v1, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 48
    .restart local v3    # "textDirClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v5, "android.text.TextDirectionHeuristics"

    invoke-virtual {v1, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 49
    .local v4, "textDirsClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v5, "FIRSTSTRONG_LTR"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    sput-object v5, Lorg/telegram/ui/Components/StaticLayoutEx;->sTextDirection:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method
