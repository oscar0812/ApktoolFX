.class public Lorg/telegram/messenger/LocaleController$PluralRules_Slovenian;
.super Lorg/telegram/messenger/LocaleController$PluralRules;
.source "LocaleController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/LocaleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PluralRules_Slovenian"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2118
    invoke-direct {p0}, Lorg/telegram/messenger/LocaleController$PluralRules;-><init>()V

    return-void
.end method


# virtual methods
.method public quantityForNumber(I)I
    .locals 4
    .param p1, "count"    # I

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x2

    .line 2120
    rem-int/lit8 v0, p1, 0x64

    .line 2121
    .local v0, "rem100":I
    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    .line 2128
    :goto_0
    return v1

    .line 2123
    :cond_0
    if-ne v0, v1, :cond_1

    move v1, v2

    .line 2124
    goto :goto_0

    .line 2125
    :cond_1
    const/4 v1, 0x3

    if-lt v0, v1, :cond_2

    if-gt v0, v2, :cond_2

    .line 2126
    const/16 v1, 0x8

    goto :goto_0

    .line 2128
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method
