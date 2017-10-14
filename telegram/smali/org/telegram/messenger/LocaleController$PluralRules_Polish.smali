.class public Lorg/telegram/messenger/LocaleController$PluralRules_Polish;
.super Lorg/telegram/messenger/LocaleController$PluralRules;
.source "LocaleController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/LocaleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PluralRules_Polish"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2146
    invoke-direct {p0}, Lorg/telegram/messenger/LocaleController$PluralRules;-><init>()V

    return-void
.end method


# virtual methods
.method public quantityForNumber(I)I
    .locals 4
    .param p1, "count"    # I

    .prologue
    const/4 v2, 0x2

    .line 2148
    rem-int/lit8 v1, p1, 0x64

    .line 2149
    .local v1, "rem100":I
    rem-int/lit8 v0, p1, 0xa

    .line 2150
    .local v0, "rem10":I
    const/4 v3, 0x1

    if-ne p1, v3, :cond_0

    .line 2155
    :goto_0
    return v2

    .line 2152
    :cond_0
    if-lt v0, v2, :cond_3

    const/4 v2, 0x4

    if-gt v0, v2, :cond_3

    const/16 v2, 0xc

    if-lt v1, v2, :cond_1

    const/16 v2, 0xe

    if-le v1, v2, :cond_3

    :cond_1
    const/16 v2, 0x16

    if-lt v1, v2, :cond_2

    const/16 v2, 0x18

    if-le v1, v2, :cond_3

    .line 2153
    :cond_2
    const/16 v2, 0x8

    goto :goto_0

    .line 2155
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method
