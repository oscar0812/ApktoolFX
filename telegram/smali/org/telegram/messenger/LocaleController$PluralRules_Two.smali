.class public Lorg/telegram/messenger/LocaleController$PluralRules_Two;
.super Lorg/telegram/messenger/LocaleController$PluralRules;
.source "LocaleController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/LocaleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PluralRules_Two"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2094
    invoke-direct {p0}, Lorg/telegram/messenger/LocaleController$PluralRules;-><init>()V

    return-void
.end method


# virtual methods
.method public quantityForNumber(I)I
    .locals 2
    .param p1, "count"    # I

    .prologue
    const/4 v0, 0x2

    .line 2096
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 2101
    :goto_0
    return v0

    .line 2098
    :cond_0
    if-ne p1, v0, :cond_1

    .line 2099
    const/4 v0, 0x4

    goto :goto_0

    .line 2101
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
