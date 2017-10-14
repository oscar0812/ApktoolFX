.class public Lorg/telegram/messenger/LocaleController$PluralRules_Romanian;
.super Lorg/telegram/messenger/LocaleController$PluralRules;
.source "LocaleController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/LocaleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PluralRules_Romanian"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2133
    invoke-direct {p0}, Lorg/telegram/messenger/LocaleController$PluralRules;-><init>()V

    return-void
.end method


# virtual methods
.method public quantityForNumber(I)I
    .locals 2
    .param p1, "count"    # I

    .prologue
    const/4 v1, 0x1

    .line 2135
    rem-int/lit8 v0, p1, 0x64

    .line 2136
    .local v0, "rem100":I
    if-ne p1, v1, :cond_0

    .line 2137
    const/4 v1, 0x2

    .line 2141
    :goto_0
    return v1

    .line 2138
    :cond_0
    if-eqz p1, :cond_1

    if-lt v0, v1, :cond_2

    const/16 v1, 0x13

    if-gt v0, v1, :cond_2

    .line 2139
    :cond_1
    const/16 v1, 0x8

    goto :goto_0

    .line 2141
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method
