.class public Lorg/telegram/messenger/LocaleController$PluralRules_Langi;
.super Lorg/telegram/messenger/LocaleController$PluralRules;
.source "LocaleController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/LocaleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PluralRules_Langi"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2223
    invoke-direct {p0}, Lorg/telegram/messenger/LocaleController$PluralRules;-><init>()V

    return-void
.end method


# virtual methods
.method public quantityForNumber(I)I
    .locals 1
    .param p1, "count"    # I

    .prologue
    const/4 v0, 0x2

    .line 2225
    if-nez p1, :cond_1

    .line 2226
    const/4 v0, 0x1

    .line 2230
    :cond_0
    :goto_0
    return v0

    .line 2227
    :cond_1
    if-lez p1, :cond_2

    if-lt p1, v0, :cond_0

    .line 2230
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
