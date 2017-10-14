.class public Lcom/stripe/android/util/StripeTextUtils;
.super Ljava/lang/Object;
.source "StripeTextUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asCardBrand(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "possibleCardType"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 92
    invoke-static {p0}, Lcom/stripe/android/util/StripeTextUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    const/4 v0, 0x0

    .line 109
    :goto_0
    return-object v0

    .line 96
    :cond_0
    const-string/jumbo v0, "American Express"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    const-string/jumbo v0, "American Express"

    goto :goto_0

    .line 98
    :cond_1
    const-string/jumbo v0, "MasterCard"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 99
    const-string/jumbo v0, "MasterCard"

    goto :goto_0

    .line 100
    :cond_2
    const-string/jumbo v0, "Diners Club"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 101
    const-string/jumbo v0, "Diners Club"

    goto :goto_0

    .line 102
    :cond_3
    const-string/jumbo v0, "Discover"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 103
    const-string/jumbo v0, "Discover"

    goto :goto_0

    .line 104
    :cond_4
    const-string/jumbo v0, "JCB"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 105
    const-string/jumbo v0, "JCB"

    goto :goto_0

    .line 106
    :cond_5
    const-string/jumbo v0, "Visa"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 107
    const-string/jumbo v0, "Visa"

    goto :goto_0

    .line 109
    :cond_6
    const-string/jumbo v0, "Unknown"

    goto :goto_0
.end method

.method public static asFundingType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "possibleFundingType"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 122
    invoke-static {p0}, Lcom/stripe/android/util/StripeTextUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    const/4 v0, 0x0

    .line 133
    :goto_0
    return-object v0

    .line 126
    :cond_0
    const-string/jumbo v0, "credit"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 127
    const-string/jumbo v0, "credit"

    goto :goto_0

    .line 128
    :cond_1
    const-string/jumbo v0, "debit"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 129
    const-string/jumbo v0, "debit"

    goto :goto_0

    .line 130
    :cond_2
    const-string/jumbo v0, "prepaid"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 131
    const-string/jumbo v0, "prepaid"

    goto :goto_0

    .line 133
    :cond_3
    const-string/jumbo v0, "unknown"

    goto :goto_0
.end method

.method public static asTokenType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "possibleTokenType"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 147
    const-string/jumbo v0, "card"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    const-string/jumbo v0, "card"

    .line 150
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static varargs hasAnyPrefix(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 5
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "prefixes"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 25
    if-nez p0, :cond_1

    .line 34
    :cond_0
    :goto_0
    return v1

    .line 29
    :cond_1
    array-length v3, p1

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v0, p1, v2

    .line 30
    .local v0, "prefix":Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 31
    const/4 v1, 0x1

    goto :goto_0

    .line 29
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static isBlank(Ljava/lang/String;)Z
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 80
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

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

.method public static isWholePositiveNumber(Ljava/lang/String;)Z
    .locals 3
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 44
    if-nez p0, :cond_1

    .line 55
    :cond_0
    :goto_0
    return v1

    .line 50
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 51
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 50
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 55
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static nullIfBlank(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-static {p0}, Lcom/stripe/android/util/StripeTextUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    const/4 p0, 0x0

    .line 68
    .end local p0    # "value":Ljava/lang/String;
    :cond_0
    return-object p0
.end method
