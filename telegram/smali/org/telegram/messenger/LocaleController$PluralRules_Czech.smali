.class public Lorg/telegram/messenger/LocaleController$PluralRules_Czech;
.super Lorg/telegram/messenger/LocaleController$PluralRules;
.source "LocaleController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/LocaleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PluralRules_Czech"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2245
    invoke-direct {p0}, Lorg/telegram/messenger/LocaleController$PluralRules;-><init>()V

    return-void
.end method


# virtual methods
.method public quantityForNumber(I)I
    .locals 2
    .param p1, "count"    # I

    .prologue
    const/4 v0, 0x2

    .line 2247
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 2252
    :goto_0
    return v0

    .line 2249
    :cond_0
    if-lt p1, v0, :cond_1

    const/4 v0, 0x4

    if-gt p1, v0, :cond_1

    .line 2250
    const/16 v0, 0x8

    goto :goto_0

    .line 2252
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
