.class public Lcom/stripe/android/util/DateUtils;
.super Ljava/lang/Object;
.source "DateUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hasMonthPassed(II)Z
    .locals 4
    .param p0, "year"    # I
    .param p1, "month"    # I

    .prologue
    const/4 v1, 0x1

    .line 30
    invoke-static {p0}, Lcom/stripe/android/util/DateUtils;->hasYearPassed(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 36
    :cond_0
    :goto_0
    return v1

    .line 34
    :cond_1
    invoke-static {}, Lcom/stripe/android/time/Clock;->getCalendarInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 36
    .local v0, "now":Ljava/util/Calendar;
    invoke-static {p0}, Lcom/stripe/android/util/DateUtils;->normalizeYear(I)I

    move-result v2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_2

    const/4 v2, 0x2

    .line 37
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    if-lt p1, v2, :cond_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static hasYearPassed(I)Z
    .locals 4
    .param p0, "year"    # I

    .prologue
    const/4 v2, 0x1

    .line 17
    invoke-static {p0}, Lcom/stripe/android/util/DateUtils;->normalizeYear(I)I

    move-result v0

    .line 18
    .local v0, "normalized":I
    invoke-static {}, Lcom/stripe/android/time/Clock;->getCalendarInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 19
    .local v1, "now":Ljava/util/Calendar;
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ge v0, v3, :cond_0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static normalizeYear(I)I
    .locals 8
    .param p0, "year"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 42
    const/16 v3, 0x64

    if-ge p0, v3, :cond_0

    if-ltz p0, :cond_0

    .line 43
    invoke-static {}, Lcom/stripe/android/time/Clock;->getCalendarInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 44
    .local v1, "now":Ljava/util/Calendar;
    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, "currentYear":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v0, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 46
    .local v2, "prefix":Ljava/lang/String;
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v4, "%s%02d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v6

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 48
    .end local v0    # "currentYear":Ljava/lang/String;
    .end local v1    # "now":Ljava/util/Calendar;
    .end local v2    # "prefix":Ljava/lang/String;
    :cond_0
    return p0
.end method
