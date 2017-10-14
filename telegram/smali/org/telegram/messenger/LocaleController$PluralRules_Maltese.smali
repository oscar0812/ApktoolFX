.class public Lorg/telegram/messenger/LocaleController$PluralRules_Maltese;
.super Lorg/telegram/messenger/LocaleController$PluralRules;
.source "LocaleController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/LocaleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PluralRules_Maltese"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2172
    invoke-direct {p0}, Lorg/telegram/messenger/LocaleController$PluralRules;-><init>()V

    return-void
.end method


# virtual methods
.method public quantityForNumber(I)I
    .locals 3
    .param p1, "count"    # I

    .prologue
    const/4 v1, 0x2

    .line 2174
    rem-int/lit8 v0, p1, 0x64

    .line 2175
    .local v0, "rem100":I
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 2182
    :goto_0
    return v1

    .line 2177
    :cond_0
    if-eqz p1, :cond_1

    if-lt v0, v1, :cond_2

    const/16 v1, 0xa

    if-gt v0, v1, :cond_2

    .line 2178
    :cond_1
    const/16 v1, 0x8

    goto :goto_0

    .line 2179
    :cond_2
    const/16 v1, 0xb

    if-lt v0, v1, :cond_3

    const/16 v1, 0x13

    if-gt v0, v1, :cond_3

    .line 2180
    const/16 v1, 0x10

    goto :goto_0

    .line 2182
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method
