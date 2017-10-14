.class Lorg/telegram/messenger/time/FastDateParser$TimeZoneStrategy;
.super Lorg/telegram/messenger/time/FastDateParser$Strategy;
.source "FastDateParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/time/FastDateParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TimeZoneStrategy"
.end annotation


# static fields
.field private static final ID:I = 0x0

.field private static final LONG_DST:I = 0x3

.field private static final LONG_STD:I = 0x1

.field private static final SHORT_DST:I = 0x4

.field private static final SHORT_STD:I = 0x2


# instance fields
.field private final tzNames:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/TimeZone;",
            ">;"
        }
    .end annotation
.end field

.field private final validTimeZoneChars:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/util/Locale;)V
    .locals 14
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    const/4 v13, 0x4

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v6, 0x0

    .line 783
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lorg/telegram/messenger/time/FastDateParser$Strategy;-><init>(Lorg/telegram/messenger/time/FastDateParser$1;)V

    .line 755
    new-instance v5, Ljava/util/TreeMap;

    sget-object v7, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v5, v7}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v5, p0, Lorg/telegram/messenger/time/FastDateParser$TimeZoneStrategy;->tzNames:Ljava/util/SortedMap;

    .line 784
    invoke-static {p1}, Ljava/text/DateFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    move-result-object v5

    invoke-virtual {v5}, Ljava/text/DateFormatSymbols;->getZoneStrings()[[Ljava/lang/String;

    move-result-object v4

    .line 785
    .local v4, "zones":[[Ljava/lang/String;
    array-length v7, v4

    move v5, v6

    :goto_0
    if-ge v5, v7, :cond_5

    aget-object v3, v4, v5

    .line 786
    .local v3, "zone":[Ljava/lang/String;
    aget-object v8, v3, v6

    const-string/jumbo v9, "GMT"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 785
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 789
    :cond_1
    aget-object v8, v3, v6

    invoke-static {v8}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    .line 790
    .local v2, "tz":Ljava/util/TimeZone;
    iget-object v8, p0, Lorg/telegram/messenger/time/FastDateParser$TimeZoneStrategy;->tzNames:Ljava/util/SortedMap;

    aget-object v9, v3, v10

    invoke-interface {v8, v9}, Ljava/util/SortedMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 791
    iget-object v8, p0, Lorg/telegram/messenger/time/FastDateParser$TimeZoneStrategy;->tzNames:Ljava/util/SortedMap;

    aget-object v9, v3, v10

    invoke-interface {v8, v9, v2}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 793
    :cond_2
    iget-object v8, p0, Lorg/telegram/messenger/time/FastDateParser$TimeZoneStrategy;->tzNames:Ljava/util/SortedMap;

    aget-object v9, v3, v11

    invoke-interface {v8, v9}, Ljava/util/SortedMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 794
    iget-object v8, p0, Lorg/telegram/messenger/time/FastDateParser$TimeZoneStrategy;->tzNames:Ljava/util/SortedMap;

    aget-object v9, v3, v11

    invoke-interface {v8, v9, v2}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 796
    :cond_3
    invoke-virtual {v2}, Ljava/util/TimeZone;->useDaylightTime()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 797
    iget-object v8, p0, Lorg/telegram/messenger/time/FastDateParser$TimeZoneStrategy;->tzNames:Ljava/util/SortedMap;

    aget-object v9, v3, v12

    invoke-interface {v8, v9}, Ljava/util/SortedMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 798
    iget-object v8, p0, Lorg/telegram/messenger/time/FastDateParser$TimeZoneStrategy;->tzNames:Ljava/util/SortedMap;

    aget-object v9, v3, v12

    invoke-interface {v8, v9, v2}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 800
    :cond_4
    iget-object v8, p0, Lorg/telegram/messenger/time/FastDateParser$TimeZoneStrategy;->tzNames:Ljava/util/SortedMap;

    aget-object v9, v3, v13

    invoke-interface {v8, v9}, Ljava/util/SortedMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 801
    iget-object v8, p0, Lorg/telegram/messenger/time/FastDateParser$TimeZoneStrategy;->tzNames:Ljava/util/SortedMap;

    aget-object v9, v3, v13

    invoke-interface {v8, v9, v2}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 806
    .end local v2    # "tz":Ljava/util/TimeZone;
    .end local v3    # "zone":[Ljava/lang/String;
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 807
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v5, "(GMT[+\\-]\\d{0,1}\\d{2}|[+\\-]\\d{2}:?\\d{2}|"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 808
    iget-object v5, p0, Lorg/telegram/messenger/time/FastDateParser$TimeZoneStrategy;->tzNames:Ljava/util/SortedMap;

    invoke-interface {v5}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 809
    .local v0, "id":Ljava/lang/String;
    invoke-static {v1, v0, v6}, Lorg/telegram/messenger/time/FastDateParser;->access$100(Ljava/lang/StringBuilder;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x7c

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 811
    .end local v0    # "id":Ljava/lang/String;
    :cond_6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    const/16 v6, 0x29

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 812
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/telegram/messenger/time/FastDateParser$TimeZoneStrategy;->validTimeZoneChars:Ljava/lang/String;

    .line 813
    return-void
.end method


# virtual methods
.method addRegex(Lorg/telegram/messenger/time/FastDateParser;Ljava/lang/StringBuilder;)Z
    .locals 1
    .param p1, "parser"    # Lorg/telegram/messenger/time/FastDateParser;
    .param p2, "regex"    # Ljava/lang/StringBuilder;

    .prologue
    .line 820
    iget-object v0, p0, Lorg/telegram/messenger/time/FastDateParser$TimeZoneStrategy;->validTimeZoneChars:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 821
    const/4 v0, 0x1

    return v0
.end method

.method setCalendar(Lorg/telegram/messenger/time/FastDateParser;Ljava/util/Calendar;Ljava/lang/String;)V
    .locals 4
    .param p1, "parser"    # Lorg/telegram/messenger/time/FastDateParser;
    .param p2, "cal"    # Ljava/util/Calendar;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 830
    invoke-virtual {p3, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2b

    if-eq v1, v2, :cond_0

    invoke-virtual {p3, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2d

    if-ne v1, v2, :cond_2

    .line 831
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "GMT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 840
    .local v0, "tz":Ljava/util/TimeZone;
    :cond_1
    :goto_0
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 841
    return-void

    .line 832
    .end local v0    # "tz":Ljava/util/TimeZone;
    :cond_2
    const-string/jumbo v1, "GMT"

    invoke-virtual {p3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 833
    invoke-static {p3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .restart local v0    # "tz":Ljava/util/TimeZone;
    goto :goto_0

    .line 835
    .end local v0    # "tz":Ljava/util/TimeZone;
    :cond_3
    iget-object v1, p0, Lorg/telegram/messenger/time/FastDateParser$TimeZoneStrategy;->tzNames:Ljava/util/SortedMap;

    invoke-interface {v1, p3}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/TimeZone;

    .line 836
    .restart local v0    # "tz":Ljava/util/TimeZone;
    if-nez v0, :cond_1

    .line 837
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is not a supported timezone name"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
