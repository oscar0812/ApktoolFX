.class public Lorg/telegram/ui/Components/EditTextBoldCursor;
.super Landroid/widget/EditText;
.source "EditTextBoldCursor.java"


# static fields
.field private static getVerticalOffsetMethod:Ljava/lang/reflect/Method;

.field private static mCursorDrawableField:Ljava/lang/reflect/Field;

.field private static mCursorDrawableResField:Ljava/lang/reflect/Field;

.field private static mEditor:Ljava/lang/reflect/Field;

.field private static mScrollYField:Ljava/lang/reflect/Field;

.field private static mShowCursorField:Ljava/lang/reflect/Field;


# instance fields
.field private allowDrawCursor:Z

.field private cursorSize:I

.field private cursorWidth:F

.field private editor:Ljava/lang/Object;

.field private gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

.field private hintAlpha:F

.field private hintColor:I

.field private hintLayout:Landroid/text/StaticLayout;

.field private hintVisible:Z

.field private ignoreBottomCount:I

.field private ignoreTopCount:I

.field private lastUpdateTime:J

.field private lineSpacingExtra:F

.field private mCursorDrawable:[Landroid/graphics/drawable/Drawable;

.field private rect:Landroid/graphics/Rect;

.field private scrollY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 57
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 47
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->rect:Landroid/graphics/Rect;

    .line 50
    iput-boolean v3, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintVisible:Z

    .line 51
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAlpha:F

    .line 53
    iput-boolean v3, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->allowDrawCursor:Z

    .line 54
    const/high16 v2, 0x40000000    # 2.0f

    iput v2, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->cursorWidth:F

    .line 59
    sget-object v2, Lorg/telegram/ui/Components/EditTextBoldCursor;->mCursorDrawableField:Ljava/lang/reflect/Field;

    if-nez v2, :cond_0

    .line 61
    :try_start_0
    const-class v2, Landroid/view/View;

    const-string/jumbo v3, "mScrollY"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Lorg/telegram/ui/Components/EditTextBoldCursor;->mScrollYField:Ljava/lang/reflect/Field;

    .line 62
    sget-object v2, Lorg/telegram/ui/Components/EditTextBoldCursor;->mScrollYField:Ljava/lang/reflect/Field;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 63
    const-class v2, Landroid/widget/TextView;

    const-string/jumbo v3, "mCursorDrawableRes"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Lorg/telegram/ui/Components/EditTextBoldCursor;->mCursorDrawableResField:Ljava/lang/reflect/Field;

    .line 64
    sget-object v2, Lorg/telegram/ui/Components/EditTextBoldCursor;->mCursorDrawableResField:Ljava/lang/reflect/Field;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 65
    const-class v2, Landroid/widget/TextView;

    const-string/jumbo v3, "mEditor"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Lorg/telegram/ui/Components/EditTextBoldCursor;->mEditor:Ljava/lang/reflect/Field;

    .line 66
    sget-object v2, Lorg/telegram/ui/Components/EditTextBoldCursor;->mEditor:Ljava/lang/reflect/Field;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 67
    const-string/jumbo v2, "android.widget.Editor"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 68
    .local v1, "editorClass":Ljava/lang/Class;
    const-string/jumbo v2, "mShowCursor"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Lorg/telegram/ui/Components/EditTextBoldCursor;->mShowCursorField:Ljava/lang/reflect/Field;

    .line 69
    sget-object v2, Lorg/telegram/ui/Components/EditTextBoldCursor;->mShowCursorField:Ljava/lang/reflect/Field;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 70
    const-string/jumbo v2, "mCursorDrawable"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Lorg/telegram/ui/Components/EditTextBoldCursor;->mCursorDrawableField:Ljava/lang/reflect/Field;

    .line 71
    sget-object v2, Lorg/telegram/ui/Components/EditTextBoldCursor;->mCursorDrawableField:Ljava/lang/reflect/Field;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 72
    const-class v2, Landroid/widget/TextView;

    const-string/jumbo v3, "getVerticalOffset"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lorg/telegram/ui/Components/EditTextBoldCursor;->getVerticalOffsetMethod:Ljava/lang/reflect/Method;

    .line 73
    sget-object v2, Lorg/telegram/ui/Components/EditTextBoldCursor;->getVerticalOffsetMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 79
    .end local v1    # "editorClass":Ljava/lang/Class;
    :cond_0
    :goto_0
    :try_start_1
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    sget-object v3, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_0

    invoke-direct {v2, v3, v4}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v2, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 80
    sget-object v2, Lorg/telegram/ui/Components/EditTextBoldCursor;->mEditor:Ljava/lang/reflect/Field;

    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->editor:Ljava/lang/Object;

    .line 81
    sget-object v2, Lorg/telegram/ui/Components/EditTextBoldCursor;->mCursorDrawableField:Ljava/lang/reflect/Field;

    iget-object v3, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->editor:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/graphics/drawable/Drawable;

    check-cast v2, [Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    .line 82
    sget-object v2, Lorg/telegram/ui/Components/EditTextBoldCursor;->mCursorDrawableResField:Ljava/lang/reflect/Field;

    const v3, 0x7f020075

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 86
    :goto_1
    const/high16 v2, 0x41c00000    # 24.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iput v2, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->cursorSize:I

    .line 87
    return-void

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 74
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    goto :goto_0

    .line 79
    nop

    :array_0
    .array-data 4
        -0xab5e25
        -0xab5e25
    .end array-data
.end method


# virtual methods
.method public getExtendedPaddingBottom()I
    .locals 2

    .prologue
    .line 141
    iget v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->ignoreBottomCount:I

    if-eqz v0, :cond_1

    .line 142
    iget v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->ignoreBottomCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->ignoreBottomCount:I

    .line 143
    iget v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->scrollY:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->scrollY:I

    neg-int v0, v0

    .line 145
    :goto_0
    return v0

    .line 143
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 145
    :cond_1
    invoke-super {p0}, Landroid/widget/EditText;->getExtendedPaddingBottom()I

    move-result v0

    goto :goto_0
.end method

.method public getExtendedPaddingTop()I
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->ignoreTopCount:I

    if-eqz v0, :cond_0

    .line 133
    iget v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->ignoreTopCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->ignoreTopCount:I

    .line 134
    const/4 v0, 0x0

    .line 136
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/EditText;->getExtendedPaddingTop()I

    move-result v0

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 22
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 150
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->getExtendedPaddingTop()I

    move-result v16

    .line 151
    .local v16, "topPadding":I
    const v18, 0x7fffffff

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/Components/EditTextBoldCursor;->scrollY:I

    .line 153
    :try_start_0
    sget-object v18, Lorg/telegram/ui/Components/EditTextBoldCursor;->mScrollYField:Ljava/lang/reflect/Field;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/Components/EditTextBoldCursor;->scrollY:I

    .line 154
    sget-object v18, Lorg/telegram/ui/Components/EditTextBoldCursor;->mScrollYField:Ljava/lang/reflect/Field;

    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 158
    :goto_0
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/Components/EditTextBoldCursor;->ignoreTopCount:I

    .line 159
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/Components/EditTextBoldCursor;->ignoreBottomCount:I

    .line 160
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 161
    const/16 v18, 0x0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 163
    :try_start_1
    invoke-super/range {p0 .. p1}, Landroid/widget/EditText;->onDraw(Landroid/graphics/Canvas;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 167
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/EditTextBoldCursor;->scrollY:I

    move/from16 v18, v0

    const v19, 0x7fffffff

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_0

    .line 169
    :try_start_2
    sget-object v18, Lorg/telegram/ui/Components/EditTextBoldCursor;->mScrollYField:Ljava/lang/reflect/Field;

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/EditTextBoldCursor;->scrollY:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 174
    :cond_0
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 175
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->length()I

    move-result v18

    if-nez v18, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintLayout:Landroid/text/StaticLayout;

    move-object/from16 v18, v0

    if-eqz v18, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintVisible:Z

    move/from16 v18, v0

    if-nez v18, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAlpha:F

    move/from16 v18, v0

    const/16 v19, 0x0

    cmpl-float v18, v18, v19

    if-eqz v18, :cond_8

    .line 176
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintVisible:Z

    move/from16 v18, v0

    if-eqz v18, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAlpha:F

    move/from16 v18, v0

    const/high16 v19, 0x3f800000    # 1.0f

    cmpl-float v18, v18, v19

    if-nez v18, :cond_3

    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintVisible:Z

    move/from16 v18, v0

    if-nez v18, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAlpha:F

    move/from16 v18, v0

    const/16 v19, 0x0

    cmpl-float v18, v18, v19

    if-eqz v18, :cond_7

    .line 177
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 178
    .local v12, "newTime":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/ui/Components/EditTextBoldCursor;->lastUpdateTime:J

    move-wide/from16 v18, v0

    sub-long v6, v12, v18

    .line 179
    .local v6, "dt":J
    const-wide/16 v18, 0x0

    cmp-long v18, v6, v18

    if-ltz v18, :cond_4

    const-wide/16 v18, 0x11

    cmp-long v18, v6, v18

    if-lez v18, :cond_5

    .line 180
    :cond_4
    const-wide/16 v6, 0x11

    .line 182
    :cond_5
    move-object/from16 v0, p0

    iput-wide v12, v0, Lorg/telegram/ui/Components/EditTextBoldCursor;->lastUpdateTime:J

    .line 183
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintVisible:Z

    move/from16 v18, v0

    if-eqz v18, :cond_c

    .line 184
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAlpha:F

    move/from16 v18, v0

    long-to-float v0, v6

    move/from16 v19, v0

    const/high16 v20, 0x43160000    # 150.0f

    div-float v19, v19, v20

    add-float v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAlpha:F

    .line 185
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAlpha:F

    move/from16 v18, v0

    const/high16 v19, 0x3f800000    # 1.0f

    cmpl-float v18, v18, v19

    if-lez v18, :cond_6

    .line 186
    const/high16 v18, 0x3f800000    # 1.0f

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAlpha:F

    .line 194
    :cond_6
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->invalidate()V

    .line 196
    .end local v6    # "dt":J
    .end local v12    # "newTime":J
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->getPaint()Landroid/text/TextPaint;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/text/TextPaint;->getColor()I

    move-result v14

    .line 197
    .local v14, "oldColor":I
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->getPaint()Landroid/text/TextPaint;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintColor:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/text/TextPaint;->setColor(I)V

    .line 198
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->getPaint()Landroid/text/TextPaint;

    move-result-object v18

    const/high16 v19, 0x437f0000    # 255.0f

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAlpha:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 199
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 200
    const/16 v18, 0x0

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->getMeasuredHeight()I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintLayout:Landroid/text/StaticLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/text/StaticLayout;->getHeight()I

    move-result v20

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x40000000    # 2.0f

    div-float v19, v19, v20

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 201
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintLayout:Landroid/text/StaticLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 202
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->getPaint()Landroid/text/TextPaint;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Landroid/text/TextPaint;->setColor(I)V

    .line 203
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 206
    .end local v14    # "oldColor":I
    :cond_8
    :try_start_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/Components/EditTextBoldCursor;->allowDrawCursor:Z

    move/from16 v18, v0

    if-eqz v18, :cond_b

    sget-object v18, Lorg/telegram/ui/Components/EditTextBoldCursor;->mShowCursorField:Ljava/lang/reflect/Field;

    if-eqz v18, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/EditTextBoldCursor;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    if-eqz v18, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/EditTextBoldCursor;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget-object v18, v18, v19

    if-eqz v18, :cond_b

    .line 207
    sget-object v18, Lorg/telegram/ui/Components/EditTextBoldCursor;->mShowCursorField:Ljava/lang/reflect/Field;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/EditTextBoldCursor;->editor:Ljava/lang/Object;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v10

    .line 208
    .local v10, "mShowCursor":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v18

    sub-long v18, v18, v10

    const-wide/16 v20, 0x3e8

    rem-long v18, v18, v20

    const-wide/16 v20, 0x1f4

    cmp-long v18, v18, v20

    if-gez v18, :cond_d

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->isFocused()Z

    move-result v18

    if-eqz v18, :cond_d

    const/4 v15, 0x1

    .line 209
    .local v15, "showCursor":Z
    :goto_4
    if-eqz v15, :cond_b

    .line 210
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 211
    const/16 v17, 0x0

    .line 212
    .local v17, "voffsetCursor":I
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->getGravity()I

    move-result v18

    and-int/lit8 v18, v18, 0x70

    const/16 v19, 0x30

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_9

    .line 213
    sget-object v18, Lorg/telegram/ui/Components/EditTextBoldCursor;->getVerticalOffsetMethod:Ljava/lang/reflect/Method;

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v17

    .line 215
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->getPaddingLeft()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->getExtendedPaddingTop()I

    move-result v19

    add-int v19, v19, v17

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 216
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->getLayout()Landroid/text/Layout;

    move-result-object v5

    .line 217
    .local v5, "layout":Landroid/text/Layout;
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->getSelectionStart()I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v8

    .line 218
    .local v8, "line":I
    invoke-virtual {v5}, Landroid/text/Layout;->getLineCount()I

    move-result v9

    .line 219
    .local v9, "lineCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/EditTextBoldCursor;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget-object v18, v18, v19

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    .line 220
    .local v4, "bounds":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/EditTextBoldCursor;->rect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    iget v0, v4, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 221
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/EditTextBoldCursor;->rect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    iget v0, v4, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/EditTextBoldCursor;->cursorWidth:F

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v20

    add-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 222
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/EditTextBoldCursor;->rect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    iget v0, v4, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 223
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/EditTextBoldCursor;->rect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    iget v0, v4, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 224
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/EditTextBoldCursor;->lineSpacingExtra:F

    move/from16 v18, v0

    const/16 v19, 0x0

    cmpl-float v18, v18, v19

    if-eqz v18, :cond_a

    add-int/lit8 v18, v9, -0x1

    move/from16 v0, v18

    if-ge v8, v0, :cond_a

    .line 225
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/EditTextBoldCursor;->rect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/EditTextBoldCursor;->lineSpacingExtra:F

    move/from16 v20, v0

    sub-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 227
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/EditTextBoldCursor;->rect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/EditTextBoldCursor;->rect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->centerY()I

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/EditTextBoldCursor;->cursorSize:I

    move/from16 v20, v0

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/EditTextBoldCursor;->rect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/EditTextBoldCursor;->rect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/EditTextBoldCursor;->cursorSize:I

    move/from16 v20, v0

    add-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/EditTextBoldCursor;->gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/EditTextBoldCursor;->rect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/drawable/GradientDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 230
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/EditTextBoldCursor;->gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 231
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    .line 237
    .end local v4    # "bounds":Landroid/graphics/Rect;
    .end local v5    # "layout":Landroid/text/Layout;
    .end local v8    # "line":I
    .end local v9    # "lineCount":I
    .end local v10    # "mShowCursor":J
    .end local v15    # "showCursor":Z
    .end local v17    # "voffsetCursor":I
    :cond_b
    :goto_5
    return-void

    .line 189
    .restart local v6    # "dt":J
    .restart local v12    # "newTime":J
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAlpha:F

    move/from16 v18, v0

    long-to-float v0, v6

    move/from16 v19, v0

    const/high16 v20, 0x43160000    # 150.0f

    div-float v19, v19, v20

    sub-float v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAlpha:F

    .line 190
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAlpha:F

    move/from16 v18, v0

    const/16 v19, 0x0

    cmpg-float v18, v18, v19

    if-gez v18, :cond_6

    .line 191
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAlpha:F

    goto/16 :goto_3

    .line 208
    .end local v6    # "dt":J
    .end local v12    # "newTime":J
    .restart local v10    # "mShowCursor":J
    :cond_d
    const/4 v15, 0x0

    goto/16 :goto_4

    .line 164
    .end local v10    # "mShowCursor":J
    :catch_0
    move-exception v18

    goto/16 :goto_1

    .line 234
    :catch_1
    move-exception v18

    goto :goto_5

    .line 170
    :catch_2
    move-exception v18

    goto/16 :goto_2

    .line 155
    :catch_3
    move-exception v18

    goto/16 :goto_0
.end method

.method public setAllowDrawCursor(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 90
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->allowDrawCursor:Z

    .line 91
    return-void
.end method

.method public setCursorColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 98
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 99
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->invalidate()V

    .line 100
    return-void
.end method

.method public setCursorSize(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 103
    iput p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->cursorSize:I

    .line 104
    return-void
.end method

.method public setCursorWidth(F)V
    .locals 0
    .param p1, "width"    # F

    .prologue
    .line 94
    iput p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->cursorWidth:F

    .line 95
    return-void
.end method

.method public setHintColor(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 116
    iput p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintColor:I

    .line 117
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->invalidate()V

    .line 118
    return-void
.end method

.method public setHintText(Ljava/lang/String;)V
    .locals 8
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 121
    new-instance v0, Landroid/text/StaticLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    const/high16 v1, 0x447a0000    # 1000.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintLayout:Landroid/text/StaticLayout;

    .line 122
    return-void
.end method

.method public setHintVisible(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 107
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintVisible:Z

    if-ne v0, p1, :cond_0

    .line 113
    :goto_0
    return-void

    .line 110
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->lastUpdateTime:J

    .line 111
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintVisible:Z

    .line 112
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->invalidate()V

    goto :goto_0
.end method

.method public setLineSpacing(FF)V
    .locals 0
    .param p1, "add"    # F
    .param p2, "mult"    # F

    .prologue
    .line 126
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->setLineSpacing(FF)V

    .line 127
    iput p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->lineSpacingExtra:F

    .line 128
    return-void
.end method
