.class final Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;
.super Ljava/lang/Object;
.source "Cea708Decoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CueBuilder"
.end annotation


# static fields
.field private static final BORDER_AND_EDGE_TYPE_NONE:I = 0x0

.field private static final BORDER_AND_EDGE_TYPE_UNIFORM:I = 0x3

.field public static final COLOR_SOLID_BLACK:I

.field public static final COLOR_SOLID_WHITE:I

.field public static final COLOR_TRANSPARENT:I

.field private static final DEFAULT_PRIORITY:I = 0x4

.field private static final DIRECTION_BOTTOM_TO_TOP:I = 0x3

.field private static final DIRECTION_LEFT_TO_RIGHT:I = 0x0

.field private static final DIRECTION_RIGHT_TO_LEFT:I = 0x1

.field private static final DIRECTION_TOP_TO_BOTTOM:I = 0x2

.field private static final HORIZONTAL_SIZE:I = 0xd1

.field private static final JUSTIFICATION_CENTER:I = 0x2

.field private static final JUSTIFICATION_FULL:I = 0x3

.field private static final JUSTIFICATION_LEFT:I = 0x0

.field private static final JUSTIFICATION_RIGHT:I = 0x1

.field private static final MAXIMUM_ROW_COUNT:I = 0xf

.field private static final PEN_FONT_STYLE_DEFAULT:I = 0x0

.field private static final PEN_FONT_STYLE_MONOSPACED_WITHOUT_SERIFS:I = 0x3

.field private static final PEN_FONT_STYLE_MONOSPACED_WITH_SERIFS:I = 0x1

.field private static final PEN_FONT_STYLE_PROPORTIONALLY_SPACED_WITHOUT_SERIFS:I = 0x4

.field private static final PEN_FONT_STYLE_PROPORTIONALLY_SPACED_WITH_SERIFS:I = 0x2

.field private static final PEN_OFFSET_NORMAL:I = 0x1

.field private static final PEN_SIZE_STANDARD:I = 0x1

.field private static final PEN_STYLE_BACKGROUND:[I

.field private static final PEN_STYLE_EDGE_TYPE:[I

.field private static final PEN_STYLE_FONT_STYLE:[I

.field private static final RELATIVE_CUE_SIZE:I = 0x63

.field private static final VERTICAL_SIZE:I = 0x4a

.field private static final WINDOW_STYLE_FILL:[I

.field private static final WINDOW_STYLE_JUSTIFICATION:[I

.field private static final WINDOW_STYLE_PRINT_DIRECTION:[I

.field private static final WINDOW_STYLE_SCROLL_DIRECTION:[I

.field private static final WINDOW_STYLE_WORD_WRAP:[Z


# instance fields
.field private anchorId:I

.field private backgroundColor:I

.field private backgroundColorStartPosition:I

.field private final captionStringBuilder:Landroid/text/SpannableStringBuilder;

.field private defined:Z

.field private foregroundColor:I

.field private foregroundColorStartPosition:I

.field private horizontalAnchor:I

.field private italicsStartPosition:I

.field private justification:I

.field private penStyleId:I

.field private priority:I

.field private relativePositioning:Z

.field private final rolledUpCaptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/text/SpannableString;",
            ">;"
        }
    .end annotation
.end field

.field private row:I

.field private rowCount:I

.field private rowLock:Z

.field private underlineStartPosition:I

.field private verticalAnchor:I

.field private visible:Z

.field private windowFillColor:I

.field private windowStyleId:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x7

    const/4 v3, 0x0

    .line 796
    invoke-static {v5, v5, v5, v3}, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->getArgbColorFromCeaColor(IIII)I

    move-result v0

    sput v0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->COLOR_SOLID_WHITE:I

    .line 797
    invoke-static {v3, v3, v3, v3}, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->getArgbColorFromCeaColor(IIII)I

    move-result v0

    sput v0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->COLOR_SOLID_BLACK:I

    .line 798
    invoke-static {v3, v3, v3, v6}, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->getArgbColorFromCeaColor(IIII)I

    move-result v0

    sput v0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->COLOR_TRANSPARENT:I

    .line 814
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->WINDOW_STYLE_JUSTIFICATION:[I

    .line 819
    new-array v0, v4, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->WINDOW_STYLE_PRINT_DIRECTION:[I

    .line 824
    new-array v0, v4, [I

    fill-array-data v0, :array_2

    sput-object v0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->WINDOW_STYLE_SCROLL_DIRECTION:[I

    .line 829
    new-array v0, v4, [Z

    fill-array-data v0, :array_3

    sput-object v0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->WINDOW_STYLE_WORD_WRAP:[Z

    .line 832
    new-array v0, v4, [I

    sget v1, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->COLOR_SOLID_BLACK:I

    aput v1, v0, v3

    sget v1, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->COLOR_TRANSPARENT:I

    aput v1, v0, v7

    sget v1, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->COLOR_SOLID_BLACK:I

    aput v1, v0, v5

    sget v1, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->COLOR_SOLID_BLACK:I

    aput v1, v0, v6

    const/4 v1, 0x4

    sget v2, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->COLOR_TRANSPARENT:I

    aput v2, v0, v1

    const/4 v1, 0x5

    sget v2, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->COLOR_SOLID_BLACK:I

    aput v2, v0, v1

    const/4 v1, 0x6

    sget v2, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->COLOR_SOLID_BLACK:I

    aput v2, v0, v1

    sput-object v0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->WINDOW_STYLE_FILL:[I

    .line 838
    new-array v0, v4, [I

    fill-array-data v0, :array_4

    sput-object v0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->PEN_STYLE_FONT_STYLE:[I

    .line 845
    new-array v0, v4, [I

    fill-array-data v0, :array_5

    sput-object v0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->PEN_STYLE_EDGE_TYPE:[I

    .line 850
    new-array v0, v4, [I

    sget v1, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->COLOR_SOLID_BLACK:I

    aput v1, v0, v3

    sget v1, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->COLOR_SOLID_BLACK:I

    aput v1, v0, v7

    sget v1, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->COLOR_SOLID_BLACK:I

    aput v1, v0, v5

    sget v1, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->COLOR_SOLID_BLACK:I

    aput v1, v0, v6

    const/4 v1, 0x4

    sget v2, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->COLOR_SOLID_BLACK:I

    aput v2, v0, v1

    const/4 v1, 0x5

    sget v2, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->COLOR_TRANSPARENT:I

    aput v2, v0, v1

    const/4 v1, 0x6

    sget v2, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->COLOR_TRANSPARENT:I

    aput v2, v0, v1

    sput-object v0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->PEN_STYLE_BACKGROUND:[I

    return-void

    .line 814
    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x2
        0x0
    .end array-data

    .line 819
    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x2
    .end array-data

    .line 824
    :array_2
    .array-data 4
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x1
    .end array-data

    .line 829
    :array_3
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x0t
    .end array-data

    .line 838
    :array_4
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x3
        0x4
    .end array-data

    .line 845
    :array_5
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3
        0x3
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 881
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 882
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->rolledUpCaptions:Ljava/util/List;

    .line 883
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    .line 884
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->reset()V

    .line 885
    return-void
.end method

.method public static getArgbColorFromCeaColor(III)I
    .locals 1
    .param p0, "red"    # I
    .param p1, "green"    # I
    .param p2, "blue"    # I

    .prologue
    .line 1211
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->getArgbColorFromCeaColor(IIII)I

    move-result v0

    return v0
.end method

.method public static getArgbColorFromCeaColor(IIII)I
    .locals 6
    .param p0, "red"    # I
    .param p1, "green"    # I
    .param p2, "blue"    # I
    .param p3, "opacity"    # I

    .prologue
    const/16 v1, 0xff

    const/4 v5, 0x1

    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 1215
    invoke-static {p0, v2, v3}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkIndex(III)I

    .line 1216
    invoke-static {p1, v2, v3}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkIndex(III)I

    .line 1217
    invoke-static {p2, v2, v3}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkIndex(III)I

    .line 1218
    invoke-static {p3, v2, v3}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkIndex(III)I

    .line 1221
    packed-switch p3, :pswitch_data_0

    .line 1234
    const/16 v0, 0xff

    .line 1240
    .local v0, "alpha":I
    :goto_0
    if-le p0, v5, :cond_0

    move v4, v1

    :goto_1
    if-le p1, v5, :cond_1

    move v3, v1

    :goto_2
    if-le p2, v5, :cond_2

    :goto_3
    invoke-static {v0, v4, v3, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    return v1

    .line 1225
    .end local v0    # "alpha":I
    :pswitch_0
    const/16 v0, 0xff

    .line 1226
    .restart local v0    # "alpha":I
    goto :goto_0

    .line 1228
    .end local v0    # "alpha":I
    :pswitch_1
    const/16 v0, 0x7f

    .line 1229
    .restart local v0    # "alpha":I
    goto :goto_0

    .line 1231
    .end local v0    # "alpha":I
    :pswitch_2
    const/4 v0, 0x0

    .line 1232
    .restart local v0    # "alpha":I
    goto :goto_0

    :cond_0
    move v4, v2

    .line 1240
    goto :goto_1

    :cond_1
    move v3, v2

    goto :goto_2

    :cond_2
    move v1, v2

    goto :goto_3

    .line 1221
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public append(C)V
    .locals 4
    .param p1, "text"    # C

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 1074
    const/16 v0, 0xa

    if-ne p1, v0, :cond_6

    .line 1075
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->rolledUpCaptions:Ljava/util/List;

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->buildSpannableString()Landroid/text/SpannableString;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1076
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 1078
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->italicsStartPosition:I

    if-eq v0, v3, :cond_0

    .line 1079
    iput v2, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->italicsStartPosition:I

    .line 1081
    :cond_0
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->underlineStartPosition:I

    if-eq v0, v3, :cond_1

    .line 1082
    iput v2, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->underlineStartPosition:I

    .line 1084
    :cond_1
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->foregroundColorStartPosition:I

    if-eq v0, v3, :cond_2

    .line 1085
    iput v2, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->foregroundColorStartPosition:I

    .line 1087
    :cond_2
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->backgroundColorStartPosition:I

    if-eq v0, v3, :cond_3

    .line 1088
    iput v2, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->backgroundColorStartPosition:I

    .line 1091
    :cond_3
    :goto_0
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->rowLock:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->rolledUpCaptions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->rowCount:I

    if-ge v0, v1, :cond_5

    :cond_4
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->rolledUpCaptions:Ljava/util/List;

    .line 1092
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xf

    if-lt v0, v1, :cond_7

    .line 1093
    :cond_5
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->rolledUpCaptions:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 1096
    :cond_6
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 1098
    :cond_7
    return-void
.end method

.method public backspace()V
    .locals 3

    .prologue
    .line 1067
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 1068
    .local v0, "length":I
    if-lez v0, :cond_0

    .line 1069
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 1071
    :cond_0
    return-void
.end method

.method public build()Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Cue;
    .locals 13

    .prologue
    const/4 v4, 0x0

    const/high16 v8, 0x42c60000    # 99.0f

    const v11, 0x3f666666    # 0.9f

    const v10, 0x3d4ccccd    # 0.05f

    const/4 v9, 0x1

    .line 1131
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1133
    const/4 v0, 0x0

    .line 1205
    :goto_0
    return-object v0

    .line 1136
    :cond_0
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1139
    .local v1, "cueString":Landroid/text/SpannableStringBuilder;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->rolledUpCaptions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v12, v0, :cond_1

    .line 1140
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->rolledUpCaptions:Ljava/util/List;

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1141
    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 1139
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 1144
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->buildSpannableString()Landroid/text/SpannableString;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1149
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->justification:I

    packed-switch v0, :pswitch_data_0

    .line 1162
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unexpected justification value: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v8, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->justification:I

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1153
    :pswitch_0
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 1167
    .local v2, "alignment":Landroid/text/Layout$Alignment;
    :goto_2
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->relativePositioning:Z

    if-eqz v0, :cond_2

    .line 1168
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->horizontalAnchor:I

    int-to-float v0, v0

    div-float v6, v0, v8

    .line 1169
    .local v6, "position":F
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->verticalAnchor:I

    int-to-float v0, v0

    div-float v3, v0, v8

    .line 1175
    .local v3, "line":F
    :goto_3
    mul-float v0, v6, v11

    add-float v6, v0, v10

    .line 1176
    mul-float v0, v3, v11

    add-float v3, v0, v10

    .line 1186
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->anchorId:I

    rem-int/lit8 v0, v0, 0x3

    if-nez v0, :cond_3

    .line 1187
    const/4 v5, 0x0

    .line 1195
    .local v5, "verticalAnchorType":I
    :goto_4
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->anchorId:I

    div-int/lit8 v0, v0, 0x3

    if-nez v0, :cond_5

    .line 1196
    const/4 v7, 0x0

    .line 1203
    .local v7, "horizontalAnchorType":I
    :goto_5
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->windowFillColor:I

    sget v8, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->COLOR_SOLID_BLACK:I

    if-eq v0, v8, :cond_7

    .line 1205
    .local v9, "windowColorSet":Z
    :goto_6
    new-instance v0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Cue;

    const/4 v8, 0x1

    iget v10, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->windowFillColor:I

    iget v11, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->priority:I

    invoke-direct/range {v0 .. v11}, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Cue;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIFZII)V

    goto :goto_0

    .line 1156
    .end local v2    # "alignment":Landroid/text/Layout$Alignment;
    .end local v3    # "line":F
    .end local v5    # "verticalAnchorType":I
    .end local v6    # "position":F
    .end local v7    # "horizontalAnchorType":I
    .end local v9    # "windowColorSet":Z
    :pswitch_1
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    .line 1157
    .restart local v2    # "alignment":Landroid/text/Layout$Alignment;
    goto :goto_2

    .line 1159
    .end local v2    # "alignment":Landroid/text/Layout$Alignment;
    :pswitch_2
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 1160
    .restart local v2    # "alignment":Landroid/text/Layout$Alignment;
    goto :goto_2

    .line 1171
    :cond_2
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->horizontalAnchor:I

    int-to-float v0, v0

    const/high16 v8, 0x43510000    # 209.0f

    div-float v6, v0, v8

    .line 1172
    .restart local v6    # "position":F
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->verticalAnchor:I

    int-to-float v0, v0

    const/high16 v8, 0x42940000    # 74.0f

    div-float v3, v0, v8

    .restart local v3    # "line":F
    goto :goto_3

    .line 1188
    :cond_3
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->anchorId:I

    rem-int/lit8 v0, v0, 0x3

    if-ne v0, v9, :cond_4

    .line 1189
    const/4 v5, 0x1

    .restart local v5    # "verticalAnchorType":I
    goto :goto_4

    .line 1191
    .end local v5    # "verticalAnchorType":I
    :cond_4
    const/4 v5, 0x2

    .restart local v5    # "verticalAnchorType":I
    goto :goto_4

    .line 1197
    :cond_5
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->anchorId:I

    div-int/lit8 v0, v0, 0x3

    if-ne v0, v9, :cond_6

    .line 1198
    const/4 v7, 0x1

    .restart local v7    # "horizontalAnchorType":I
    goto :goto_5

    .line 1200
    .end local v7    # "horizontalAnchorType":I
    :cond_6
    const/4 v7, 0x2

    .restart local v7    # "horizontalAnchorType":I
    goto :goto_5

    :cond_7
    move v9, v4

    .line 1203
    goto :goto_6

    .line 1149
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public buildSpannableString()Landroid/text/SpannableString;
    .locals 6

    .prologue
    const/16 v5, 0x21

    const/4 v4, -0x1

    .line 1101
    new-instance v1, Landroid/text/SpannableStringBuilder;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1103
    .local v1, "spannableStringBuilder":Landroid/text/SpannableStringBuilder;
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 1105
    .local v0, "length":I
    if-lez v0, :cond_3

    .line 1106
    iget v2, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->italicsStartPosition:I

    if-eq v2, v4, :cond_0

    .line 1107
    new-instance v2, Landroid/text/style/StyleSpan;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->italicsStartPosition:I

    invoke-virtual {v1, v2, v3, v0, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1111
    :cond_0
    iget v2, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->underlineStartPosition:I

    if-eq v2, v4, :cond_1

    .line 1112
    new-instance v2, Landroid/text/style/UnderlineSpan;

    invoke-direct {v2}, Landroid/text/style/UnderlineSpan;-><init>()V

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->underlineStartPosition:I

    invoke-virtual {v1, v2, v3, v0, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1116
    :cond_1
    iget v2, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->foregroundColorStartPosition:I

    if-eq v2, v4, :cond_2

    .line 1117
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->foregroundColor:I

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->foregroundColorStartPosition:I

    invoke-virtual {v1, v2, v3, v0, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1121
    :cond_2
    iget v2, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->backgroundColorStartPosition:I

    if-eq v2, v4, :cond_3

    .line 1122
    new-instance v2, Landroid/text/style/BackgroundColorSpan;

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->backgroundColor:I

    invoke-direct {v2, v3}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->backgroundColorStartPosition:I

    invoke-virtual {v1, v2, v3, v0, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1127
    :cond_3
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    return-object v2
.end method

.method public clear()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 913
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->rolledUpCaptions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 914
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 915
    iput v1, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->italicsStartPosition:I

    .line 916
    iput v1, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->underlineStartPosition:I

    .line 917
    iput v1, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->foregroundColorStartPosition:I

    .line 918
    iput v1, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->backgroundColorStartPosition:I

    .line 919
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->row:I

    .line 920
    return-void
.end method

.method public defineWindow(ZZZIZIIIIIII)V
    .locals 11
    .param p1, "visible"    # Z
    .param p2, "rowLock"    # Z
    .param p3, "columnLock"    # Z
    .param p4, "priority"    # I
    .param p5, "relativePositioning"    # Z
    .param p6, "verticalAnchor"    # I
    .param p7, "horizontalAnchor"    # I
    .param p8, "rowCount"    # I
    .param p9, "columnCount"    # I
    .param p10, "anchorId"    # I
    .param p11, "windowStyleId"    # I
    .param p12, "penStyleId"    # I

    .prologue
    .line 937
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->defined:Z

    .line 938
    iput-boolean p1, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->visible:Z

    .line 939
    iput-boolean p2, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->rowLock:Z

    .line 940
    iput p4, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->priority:I

    .line 941
    move/from16 v0, p5

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->relativePositioning:Z

    .line 942
    move/from16 v0, p6

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->verticalAnchor:I

    .line 943
    move/from16 v0, p7

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->horizontalAnchor:I

    .line 944
    move/from16 v0, p10

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->anchorId:I

    .line 947
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->rowCount:I

    add-int/lit8 v2, p8, 0x1

    if-eq v1, v2, :cond_2

    .line 948
    add-int/lit8 v1, p8, 0x1

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->rowCount:I

    .line 951
    :goto_0
    if-eqz p2, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->rolledUpCaptions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->rowCount:I

    if-ge v1, v2, :cond_1

    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->rolledUpCaptions:Ljava/util/List;

    .line 952
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0xf

    if-lt v1, v2, :cond_2

    .line 953
    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->rolledUpCaptions:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 959
    :cond_2
    if-eqz p11, :cond_3

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->windowStyleId:I

    move/from16 v0, p11

    if-eq v1, v0, :cond_3

    .line 960
    move/from16 v0, p11

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->windowStyleId:I

    .line 962
    add-int/lit8 v10, p11, -0x1

    .line 964
    .local v10, "windowStyleIdIndex":I
    sget-object v1, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->WINDOW_STYLE_FILL:[I

    aget v2, v1, v10

    sget v3, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->COLOR_TRANSPARENT:I

    sget-object v1, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->WINDOW_STYLE_WORD_WRAP:[Z

    aget-boolean v4, v1, v10

    const/4 v5, 0x0

    sget-object v1, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->WINDOW_STYLE_PRINT_DIRECTION:[I

    aget v6, v1, v10

    sget-object v1, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->WINDOW_STYLE_SCROLL_DIRECTION:[I

    aget v7, v1, v10

    sget-object v1, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->WINDOW_STYLE_JUSTIFICATION:[I

    aget v8, v1, v10

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->setWindowAttributes(IIZIIII)V

    .line 971
    .end local v10    # "windowStyleIdIndex":I
    :cond_3
    if-eqz p12, :cond_4

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->penStyleId:I

    move/from16 v0, p12

    if-eq v1, v0, :cond_4

    .line 972
    move/from16 v0, p12

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->penStyleId:I

    .line 974
    add-int/lit8 v9, p12, -0x1

    .line 977
    .local v9, "penStyleIdIndex":I
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    sget-object v1, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->PEN_STYLE_EDGE_TYPE:[I

    aget v7, v1, v9

    sget-object v1, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->PEN_STYLE_FONT_STYLE:[I

    aget v8, v1, v9

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->setPenAttributes(IIIZZII)V

    .line 979
    sget v1, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->COLOR_SOLID_WHITE:I

    sget-object v2, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->PEN_STYLE_BACKGROUND:[I

    aget v2, v2, v9

    sget v3, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->COLOR_SOLID_BLACK:I

    invoke-virtual {p0, v1, v2, v3}, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->setPenColor(III)V

    .line 981
    .end local v9    # "penStyleIdIndex":I
    :cond_4
    return-void
.end method

.method public isDefined()Z
    .locals 1

    .prologue
    .line 923
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->defined:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 888
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->isDefined()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->rolledUpCaptions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 931
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->visible:Z

    return v0
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 892
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->clear()V

    .line 894
    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->defined:Z

    .line 895
    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->visible:Z

    .line 896
    const/4 v0, 0x4

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->priority:I

    .line 897
    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->relativePositioning:Z

    .line 898
    iput v1, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->verticalAnchor:I

    .line 899
    iput v1, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->horizontalAnchor:I

    .line 900
    iput v1, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->anchorId:I

    .line 901
    const/16 v0, 0xf

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->rowCount:I

    .line 902
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->rowLock:Z

    .line 903
    iput v1, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->justification:I

    .line 904
    iput v1, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->windowStyleId:I

    .line 905
    iput v1, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->penStyleId:I

    .line 906
    sget v0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->COLOR_SOLID_BLACK:I

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->windowFillColor:I

    .line 908
    sget v0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->COLOR_SOLID_WHITE:I

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->foregroundColor:I

    .line 909
    sget v0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->COLOR_SOLID_BLACK:I

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->backgroundColor:I

    .line 910
    return-void
.end method

.method public setPenAttributes(IIIZZII)V
    .locals 6
    .param p1, "textTag"    # I
    .param p2, "offset"    # I
    .param p3, "penSize"    # I
    .param p4, "italicsToggle"    # Z
    .param p5, "underlineToggle"    # Z
    .param p6, "edgeType"    # I
    .param p7, "fontStyle"    # I

    .prologue
    const/16 v5, 0x21

    const/4 v4, -0x1

    .line 1001
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->italicsStartPosition:I

    if-eq v0, v4, :cond_2

    .line 1002
    if-nez p4, :cond_0

    .line 1003
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v1, Landroid/text/style/StyleSpan;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->italicsStartPosition:I

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    .line 1004
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    .line 1003
    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1005
    iput v4, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->italicsStartPosition:I

    .line 1011
    :cond_0
    :goto_0
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->underlineStartPosition:I

    if-eq v0, v4, :cond_3

    .line 1012
    if-nez p5, :cond_1

    .line 1013
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v1, Landroid/text/style/UnderlineSpan;

    invoke-direct {v1}, Landroid/text/style/UnderlineSpan;-><init>()V

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->underlineStartPosition:I

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    .line 1014
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    .line 1013
    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1015
    iput v4, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->underlineStartPosition:I

    .line 1023
    :cond_1
    :goto_1
    return-void

    .line 1007
    :cond_2
    if-eqz p4, :cond_0

    .line 1008
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->italicsStartPosition:I

    goto :goto_0

    .line 1017
    :cond_3
    if-eqz p5, :cond_1

    .line 1018
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->underlineStartPosition:I

    goto :goto_1
.end method

.method public setPenColor(III)V
    .locals 6
    .param p1, "foregroundColor"    # I
    .param p2, "backgroundColor"    # I
    .param p3, "edgeColor"    # I

    .prologue
    const/16 v5, 0x21

    const/4 v4, -0x1

    .line 1026
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->foregroundColorStartPosition:I

    if-eq v0, v4, :cond_0

    .line 1027
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->foregroundColor:I

    if-eq v0, p1, :cond_0

    .line 1028
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->foregroundColor:I

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->foregroundColorStartPosition:I

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    .line 1029
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    .line 1028
    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1033
    :cond_0
    sget v0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->COLOR_SOLID_WHITE:I

    if-eq p1, v0, :cond_1

    .line 1034
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->foregroundColorStartPosition:I

    .line 1035
    iput p1, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->foregroundColor:I

    .line 1038
    :cond_1
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->backgroundColorStartPosition:I

    if-eq v0, v4, :cond_2

    .line 1039
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->backgroundColor:I

    if-eq v0, p2, :cond_2

    .line 1040
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v1, Landroid/text/style/BackgroundColorSpan;

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->backgroundColor:I

    invoke-direct {v1, v2}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->backgroundColorStartPosition:I

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    .line 1041
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    .line 1040
    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1045
    :cond_2
    sget v0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->COLOR_SOLID_BLACK:I

    if-eq p2, v0, :cond_3

    .line 1046
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->backgroundColorStartPosition:I

    .line 1047
    iput p2, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->backgroundColor:I

    .line 1051
    :cond_3
    return-void
.end method

.method public setPenLocation(II)V
    .locals 1
    .param p1, "row"    # I
    .param p2, "column"    # I

    .prologue
    .line 1060
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->row:I

    if-eq v0, p1, :cond_0

    .line 1061
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    .line 1063
    :cond_0
    iput p1, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->row:I

    .line 1064
    return-void
.end method

.method public setVisibility(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 927
    iput-boolean p1, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->visible:Z

    .line 928
    return-void
.end method

.method public setWindowAttributes(IIZIIII)V
    .locals 0
    .param p1, "fillColor"    # I
    .param p2, "borderColor"    # I
    .param p3, "wordWrapToggle"    # Z
    .param p4, "borderType"    # I
    .param p5, "printDirection"    # I
    .param p6, "scrollDirection"    # I
    .param p7, "justification"    # I

    .prologue
    .line 986
    iput p1, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->windowFillColor:I

    .line 991
    iput p7, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->justification:I

    .line 993
    return-void
.end method
