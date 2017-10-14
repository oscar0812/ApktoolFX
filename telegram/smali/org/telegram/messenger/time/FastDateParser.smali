.class public Lorg/telegram/messenger/time/FastDateParser;
.super Ljava/lang/Object;
.source "FastDateParser.java"

# interfaces
.implements Lorg/telegram/messenger/time/DateParser;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/time/FastDateParser$TimeZoneStrategy;,
        Lorg/telegram/messenger/time/FastDateParser$NumberStrategy;,
        Lorg/telegram/messenger/time/FastDateParser$TextStrategy;,
        Lorg/telegram/messenger/time/FastDateParser$CopyQuotedStrategy;,
        Lorg/telegram/messenger/time/FastDateParser$Strategy;
    }
.end annotation


# static fields
.field private static final ABBREVIATED_YEAR_STRATEGY:Lorg/telegram/messenger/time/FastDateParser$Strategy;

.field private static final DAY_OF_MONTH_STRATEGY:Lorg/telegram/messenger/time/FastDateParser$Strategy;

.field private static final DAY_OF_WEEK_IN_MONTH_STRATEGY:Lorg/telegram/messenger/time/FastDateParser$Strategy;

.field private static final DAY_OF_YEAR_STRATEGY:Lorg/telegram/messenger/time/FastDateParser$Strategy;

.field private static final HOUR_OF_DAY_STRATEGY:Lorg/telegram/messenger/time/FastDateParser$Strategy;

.field private static final HOUR_STRATEGY:Lorg/telegram/messenger/time/FastDateParser$Strategy;

.field static final JAPANESE_IMPERIAL:Ljava/util/Locale;

.field private static final LITERAL_YEAR_STRATEGY:Lorg/telegram/messenger/time/FastDateParser$Strategy;

.field private static final MILLISECOND_STRATEGY:Lorg/telegram/messenger/time/FastDateParser$Strategy;

.field private static final MINUTE_STRATEGY:Lorg/telegram/messenger/time/FastDateParser$Strategy;

.field private static final MODULO_HOUR_OF_DAY_STRATEGY:Lorg/telegram/messenger/time/FastDateParser$Strategy;

.field private static final MODULO_HOUR_STRATEGY:Lorg/telegram/messenger/time/FastDateParser$Strategy;

.field private static final NUMBER_MONTH_STRATEGY:Lorg/telegram/messenger/time/FastDateParser$Strategy;

.field private static final SECOND_STRATEGY:Lorg/telegram/messenger/time/FastDateParser$Strategy;

.field private static final WEEK_OF_MONTH_STRATEGY:Lorg/telegram/messenger/time/FastDateParser$Strategy;

.field private static final WEEK_OF_YEAR_STRATEGY:Lorg/telegram/messenger/time/FastDateParser$Strategy;

.field private static final caches:[Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/util/Locale;",
            "Lorg/telegram/messenger/time/FastDateParser$Strategy;",
            ">;"
        }
    .end annotation
.end field

.field private static final formatPattern:Ljava/util/regex/Pattern;

.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private final century:I

.field private transient currentFormatField:Ljava/lang/String;

.field private final locale:Ljava/util/Locale;

.field private transient nextStrategy:Lorg/telegram/messenger/time/FastDateParser$Strategy;

.field private transient parsePattern:Ljava/util/regex/Pattern;

.field private final pattern:Ljava/lang/String;

.field private final startYear:I

.field private transient strategies:[Lorg/telegram/messenger/time/FastDateParser$Strategy;

.field private final timeZone:Ljava/util/TimeZone;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/16 v6, 0xb

    const/16 v5, 0xa

    const/4 v4, 0x1

    .line 69
    new-instance v0, Ljava/util/Locale;

    const-string/jumbo v1, "ja"

    const-string/jumbo v2, "JP"

    const-string/jumbo v3, "JP"

    invoke-direct {v0, v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/telegram/messenger/time/FastDateParser;->JAPANESE_IMPERIAL:Ljava/util/Locale;

    .line 491
    const-string/jumbo v0, "D+|E+|F+|G+|H+|K+|M+|S+|W+|Z+|a+|d+|h+|k+|m+|s+|w+|y+|z+|\'\'|\'[^\']++(\'\'[^\']*+)*+\'|[^\'A-Za-z]++"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/time/FastDateParser;->formatPattern:Ljava/util/regex/Pattern;

    .line 551
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/util/concurrent/ConcurrentMap;

    sput-object v0, Lorg/telegram/messenger/time/FastDateParser;->caches:[Ljava/util/concurrent/ConcurrentMap;

    .line 735
    new-instance v0, Lorg/telegram/messenger/time/FastDateParser$1;

    invoke-direct {v0, v4}, Lorg/telegram/messenger/time/FastDateParser$1;-><init>(I)V

    sput-object v0, Lorg/telegram/messenger/time/FastDateParser;->ABBREVIATED_YEAR_STRATEGY:Lorg/telegram/messenger/time/FastDateParser$Strategy;

    .line 844
    new-instance v0, Lorg/telegram/messenger/time/FastDateParser$2;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/telegram/messenger/time/FastDateParser$2;-><init>(I)V

    sput-object v0, Lorg/telegram/messenger/time/FastDateParser;->NUMBER_MONTH_STRATEGY:Lorg/telegram/messenger/time/FastDateParser$Strategy;

    .line 850
    new-instance v0, Lorg/telegram/messenger/time/FastDateParser$NumberStrategy;

    invoke-direct {v0, v4}, Lorg/telegram/messenger/time/FastDateParser$NumberStrategy;-><init>(I)V

    sput-object v0, Lorg/telegram/messenger/time/FastDateParser;->LITERAL_YEAR_STRATEGY:Lorg/telegram/messenger/time/FastDateParser$Strategy;

    .line 851
    new-instance v0, Lorg/telegram/messenger/time/FastDateParser$NumberStrategy;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/telegram/messenger/time/FastDateParser$NumberStrategy;-><init>(I)V

    sput-object v0, Lorg/telegram/messenger/time/FastDateParser;->WEEK_OF_YEAR_STRATEGY:Lorg/telegram/messenger/time/FastDateParser$Strategy;

    .line 852
    new-instance v0, Lorg/telegram/messenger/time/FastDateParser$NumberStrategy;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lorg/telegram/messenger/time/FastDateParser$NumberStrategy;-><init>(I)V

    sput-object v0, Lorg/telegram/messenger/time/FastDateParser;->WEEK_OF_MONTH_STRATEGY:Lorg/telegram/messenger/time/FastDateParser$Strategy;

    .line 853
    new-instance v0, Lorg/telegram/messenger/time/FastDateParser$NumberStrategy;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lorg/telegram/messenger/time/FastDateParser$NumberStrategy;-><init>(I)V

    sput-object v0, Lorg/telegram/messenger/time/FastDateParser;->DAY_OF_YEAR_STRATEGY:Lorg/telegram/messenger/time/FastDateParser$Strategy;

    .line 854
    new-instance v0, Lorg/telegram/messenger/time/FastDateParser$NumberStrategy;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lorg/telegram/messenger/time/FastDateParser$NumberStrategy;-><init>(I)V

    sput-object v0, Lorg/telegram/messenger/time/FastDateParser;->DAY_OF_MONTH_STRATEGY:Lorg/telegram/messenger/time/FastDateParser$Strategy;

    .line 855
    new-instance v0, Lorg/telegram/messenger/time/FastDateParser$NumberStrategy;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lorg/telegram/messenger/time/FastDateParser$NumberStrategy;-><init>(I)V

    sput-object v0, Lorg/telegram/messenger/time/FastDateParser;->DAY_OF_WEEK_IN_MONTH_STRATEGY:Lorg/telegram/messenger/time/FastDateParser$Strategy;

    .line 856
    new-instance v0, Lorg/telegram/messenger/time/FastDateParser$NumberStrategy;

    invoke-direct {v0, v6}, Lorg/telegram/messenger/time/FastDateParser$NumberStrategy;-><init>(I)V

    sput-object v0, Lorg/telegram/messenger/time/FastDateParser;->HOUR_OF_DAY_STRATEGY:Lorg/telegram/messenger/time/FastDateParser$Strategy;

    .line 857
    new-instance v0, Lorg/telegram/messenger/time/FastDateParser$3;

    invoke-direct {v0, v6}, Lorg/telegram/messenger/time/FastDateParser$3;-><init>(I)V

    sput-object v0, Lorg/telegram/messenger/time/FastDateParser;->MODULO_HOUR_OF_DAY_STRATEGY:Lorg/telegram/messenger/time/FastDateParser$Strategy;

    .line 863
    new-instance v0, Lorg/telegram/messenger/time/FastDateParser$4;

    invoke-direct {v0, v5}, Lorg/telegram/messenger/time/FastDateParser$4;-><init>(I)V

    sput-object v0, Lorg/telegram/messenger/time/FastDateParser;->MODULO_HOUR_STRATEGY:Lorg/telegram/messenger/time/FastDateParser$Strategy;

    .line 869
    new-instance v0, Lorg/telegram/messenger/time/FastDateParser$NumberStrategy;

    invoke-direct {v0, v5}, Lorg/telegram/messenger/time/FastDateParser$NumberStrategy;-><init>(I)V

    sput-object v0, Lorg/telegram/messenger/time/FastDateParser;->HOUR_STRATEGY:Lorg/telegram/messenger/time/FastDateParser$Strategy;

    .line 870
    new-instance v0, Lorg/telegram/messenger/time/FastDateParser$NumberStrategy;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lorg/telegram/messenger/time/FastDateParser$NumberStrategy;-><init>(I)V

    sput-object v0, Lorg/telegram/messenger/time/FastDateParser;->MINUTE_STRATEGY:Lorg/telegram/messenger/time/FastDateParser$Strategy;

    .line 871
    new-instance v0, Lorg/telegram/messenger/time/FastDateParser$NumberStrategy;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Lorg/telegram/messenger/time/FastDateParser$NumberStrategy;-><init>(I)V

    sput-object v0, Lorg/telegram/messenger/time/FastDateParser;->SECOND_STRATEGY:Lorg/telegram/messenger/time/FastDateParser$Strategy;

    .line 872
    new-instance v0, Lorg/telegram/messenger/time/FastDateParser$NumberStrategy;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Lorg/telegram/messenger/time/FastDateParser$NumberStrategy;-><init>(I)V

    sput-object v0, Lorg/telegram/messenger/time/FastDateParser;->MILLISECOND_STRATEGY:Lorg/telegram/messenger/time/FastDateParser$Strategy;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)V
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "timeZone"    # Ljava/util/TimeZone;
    .param p3, "locale"    # Ljava/util/Locale;

    .prologue
    .line 95
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/telegram/messenger/time/FastDateParser;-><init>(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;Ljava/util/Date;)V

    .line 96
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;Ljava/util/Date;)V
    .locals 4
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "timeZone"    # Ljava/util/TimeZone;
    .param p3, "locale"    # Ljava/util/Locale;
    .param p4, "centuryStart"    # Ljava/util/Date;

    .prologue
    const/4 v3, 0x1

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-object p1, p0, Lorg/telegram/messenger/time/FastDateParser;->pattern:Ljava/lang/String;

    .line 110
    iput-object p2, p0, Lorg/telegram/messenger/time/FastDateParser;->timeZone:Ljava/util/TimeZone;

    .line 111
    iput-object p3, p0, Lorg/telegram/messenger/time/FastDateParser;->locale:Ljava/util/Locale;

    .line 113
    invoke-static {p2, p3}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    .line 115
    .local v1, "definingCalendar":Ljava/util/Calendar;
    if-eqz p4, :cond_0

    .line 116
    invoke-virtual {v1, p4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 117
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 125
    .local v0, "centuryStartYear":I
    :goto_0
    div-int/lit8 v2, v0, 0x64

    mul-int/lit8 v2, v2, 0x64

    iput v2, p0, Lorg/telegram/messenger/time/FastDateParser;->century:I

    .line 126
    iget v2, p0, Lorg/telegram/messenger/time/FastDateParser;->century:I

    sub-int v2, v0, v2

    iput v2, p0, Lorg/telegram/messenger/time/FastDateParser;->startYear:I

    .line 128
    invoke-direct {p0, v1}, Lorg/telegram/messenger/time/FastDateParser;->init(Ljava/util/Calendar;)V

    .line 129
    return-void

    .line 118
    .end local v0    # "centuryStartYear":I
    :cond_0
    sget-object v2, Lorg/telegram/messenger/time/FastDateParser;->JAPANESE_IMPERIAL:Ljava/util/Locale;

    invoke-virtual {p3, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 119
    const/4 v0, 0x0

    .restart local v0    # "centuryStartYear":I
    goto :goto_0

    .line 122
    .end local v0    # "centuryStartYear":I
    :cond_1
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 123
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v0, v2, -0x50

    .restart local v0    # "centuryStartYear":I
    goto :goto_0
.end method

.method static synthetic access$100(Ljava/lang/StringBuilder;Ljava/lang/String;Z)Ljava/lang/StringBuilder;
    .locals 1
    .param p0, "x0"    # Ljava/lang/StringBuilder;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    .line 61
    invoke-static {p0, p1, p2}, Lorg/telegram/messenger/time/FastDateParser;->escapeRegex(Ljava/lang/StringBuilder;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(ILjava/util/Calendar;Ljava/util/Locale;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # I
    .param p1, "x1"    # Ljava/util/Calendar;
    .param p2, "x2"    # Ljava/util/Locale;

    .prologue
    .line 61
    invoke-static {p0, p1, p2}, Lorg/telegram/messenger/time/FastDateParser;->getDisplayNames(ILjava/util/Calendar;Ljava/util/Locale;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lorg/telegram/messenger/time/FastDateParser;I)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/time/FastDateParser;
    .param p1, "x1"    # I

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lorg/telegram/messenger/time/FastDateParser;->adjustYear(I)I

    move-result v0

    return v0
.end method

.method private adjustYear(I)I
    .locals 2
    .param p1, "twoDigitYear"    # I

    .prologue
    .line 427
    iget v1, p0, Lorg/telegram/messenger/time/FastDateParser;->century:I

    add-int v0, v1, p1

    .line 428
    .local v0, "trial":I
    iget v1, p0, Lorg/telegram/messenger/time/FastDateParser;->startYear:I

    if-lt p1, v1, :cond_0

    .end local v0    # "trial":I
    :goto_0
    return v0

    .restart local v0    # "trial":I
    :cond_0
    add-int/lit8 v0, v0, 0x64

    goto :goto_0
.end method

.method private static escapeRegex(Ljava/lang/StringBuilder;Ljava/lang/String;Z)Ljava/lang/StringBuilder;
    .locals 3
    .param p0, "regex"    # Ljava/lang/StringBuilder;
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "unquote"    # Z

    .prologue
    .line 336
    const-string/jumbo v2, "\\Q"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 338
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 339
    .local v0, "c":C
    sparse-switch v0, :sswitch_data_0

    .line 369
    :cond_0
    :goto_1
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 337
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 341
    :sswitch_0
    if-eqz p2, :cond_0

    .line 342
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 372
    .end local v0    # "c":C
    :goto_2
    return-object p0

    .line 345
    .restart local v0    # "c":C
    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_1

    .line 349
    :sswitch_1
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 359
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 360
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 361
    const/16 v2, 0x45

    if-ne v0, v2, :cond_0

    .line 362
    const-string/jumbo v2, "E\\\\E\\"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    const/16 v0, 0x51

    goto :goto_1

    .line 371
    .end local v0    # "c":C
    :cond_2
    const-string/jumbo v2, "\\E"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 339
    nop

    :sswitch_data_0
    .sparse-switch
        0x27 -> :sswitch_0
        0x5c -> :sswitch_1
    .end sparse-switch
.end method

.method private static getCache(I)Ljava/util/concurrent/ConcurrentMap;
    .locals 4
    .param p0, "field"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/util/Locale;",
            "Lorg/telegram/messenger/time/FastDateParser$Strategy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 560
    sget-object v1, Lorg/telegram/messenger/time/FastDateParser;->caches:[Ljava/util/concurrent/ConcurrentMap;

    monitor-enter v1

    .line 561
    :try_start_0
    sget-object v0, Lorg/telegram/messenger/time/FastDateParser;->caches:[Ljava/util/concurrent/ConcurrentMap;

    aget-object v0, v0, p0

    if-nez v0, :cond_0

    .line 562
    sget-object v0, Lorg/telegram/messenger/time/FastDateParser;->caches:[Ljava/util/concurrent/ConcurrentMap;

    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    aput-object v2, v0, p0

    .line 564
    :cond_0
    sget-object v0, Lorg/telegram/messenger/time/FastDateParser;->caches:[Ljava/util/concurrent/ConcurrentMap;

    aget-object v0, v0, p0

    monitor-exit v1

    return-object v0

    .line 565
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static getDisplayNameArray(IZLjava/util/Locale;)[Ljava/lang/String;
    .locals 2
    .param p0, "field"    # I
    .param p1, "isLong"    # Z
    .param p2, "locale"    # Ljava/util/Locale;

    .prologue
    .line 376
    new-instance v0, Ljava/text/DateFormatSymbols;

    invoke-direct {v0, p2}, Ljava/text/DateFormatSymbols;-><init>(Ljava/util/Locale;)V

    .line 377
    .local v0, "dfs":Ljava/text/DateFormatSymbols;
    sparse-switch p0, :sswitch_data_0

    .line 387
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 379
    :sswitch_0
    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 381
    :sswitch_1
    if-eqz p1, :cond_0

    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getWeekdays()[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getShortWeekdays()[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 383
    :sswitch_2
    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getEras()[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 385
    :sswitch_3
    if-eqz p1, :cond_1

    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getMonths()[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 377
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x2 -> :sswitch_3
        0x7 -> :sswitch_1
        0x9 -> :sswitch_0
    .end sparse-switch
.end method

.method private static getDisplayNames(ILjava/util/Calendar;Ljava/util/Locale;)Ljava/util/Map;
    .locals 1
    .param p0, "field"    # I
    .param p1, "definingCalendar"    # Ljava/util/Calendar;
    .param p2, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Calendar;",
            "Ljava/util/Locale;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 417
    invoke-static {p0, p2}, Lorg/telegram/messenger/time/FastDateParser;->getDisplayNames(ILjava/util/Locale;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private static getDisplayNames(ILjava/util/Locale;)Ljava/util/Map;
    .locals 2
    .param p0, "field"    # I
    .param p1, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Locale;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 402
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 403
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    invoke-static {p0, v1, p1}, Lorg/telegram/messenger/time/FastDateParser;->getDisplayNameArray(IZLjava/util/Locale;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/messenger/time/FastDateParser;->insertValuesInMap(Ljava/util/Map;[Ljava/lang/String;)V

    .line 404
    const/4 v1, 0x1

    invoke-static {p0, v1, p1}, Lorg/telegram/messenger/time/FastDateParser;->getDisplayNameArray(IZLjava/util/Locale;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/messenger/time/FastDateParser;->insertValuesInMap(Ljava/util/Map;[Ljava/lang/String;)V

    .line 405
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .end local v0    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_0
    return-object v0
.end method

.method private getLocaleSpecificStrategy(ILjava/util/Calendar;)Lorg/telegram/messenger/time/FastDateParser$Strategy;
    .locals 4
    .param p1, "field"    # I
    .param p2, "definingCalendar"    # Ljava/util/Calendar;

    .prologue
    .line 576
    invoke-static {p1}, Lorg/telegram/messenger/time/FastDateParser;->getCache(I)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    .line 577
    .local v0, "cache":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Ljava/util/Locale;Lorg/telegram/messenger/time/FastDateParser$Strategy;>;"
    iget-object v3, p0, Lorg/telegram/messenger/time/FastDateParser;->locale:Ljava/util/Locale;

    invoke-interface {v0, v3}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/time/FastDateParser$Strategy;

    .line 578
    .local v2, "strategy":Lorg/telegram/messenger/time/FastDateParser$Strategy;
    if-nez v2, :cond_1

    .line 579
    const/16 v3, 0xf

    if-ne p1, v3, :cond_0

    new-instance v2, Lorg/telegram/messenger/time/FastDateParser$TimeZoneStrategy;

    .end local v2    # "strategy":Lorg/telegram/messenger/time/FastDateParser$Strategy;
    iget-object v3, p0, Lorg/telegram/messenger/time/FastDateParser;->locale:Ljava/util/Locale;

    invoke-direct {v2, v3}, Lorg/telegram/messenger/time/FastDateParser$TimeZoneStrategy;-><init>(Ljava/util/Locale;)V

    .line 582
    .restart local v2    # "strategy":Lorg/telegram/messenger/time/FastDateParser$Strategy;
    :goto_0
    iget-object v3, p0, Lorg/telegram/messenger/time/FastDateParser;->locale:Ljava/util/Locale;

    invoke-interface {v0, v3, v2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/time/FastDateParser$Strategy;

    .line 583
    .local v1, "inCache":Lorg/telegram/messenger/time/FastDateParser$Strategy;
    if-eqz v1, :cond_1

    .line 587
    .end local v1    # "inCache":Lorg/telegram/messenger/time/FastDateParser$Strategy;
    :goto_1
    return-object v1

    .line 579
    :cond_0
    new-instance v2, Lorg/telegram/messenger/time/FastDateParser$TextStrategy;

    .end local v2    # "strategy":Lorg/telegram/messenger/time/FastDateParser$Strategy;
    iget-object v3, p0, Lorg/telegram/messenger/time/FastDateParser;->locale:Ljava/util/Locale;

    invoke-direct {v2, p1, p2, v3}, Lorg/telegram/messenger/time/FastDateParser$TextStrategy;-><init>(ILjava/util/Calendar;Ljava/util/Locale;)V

    goto :goto_0

    .restart local v2    # "strategy":Lorg/telegram/messenger/time/FastDateParser$Strategy;
    :cond_1
    move-object v1, v2

    .line 587
    goto :goto_1
.end method

.method private getStrategy(Ljava/lang/String;Ljava/util/Calendar;)Lorg/telegram/messenger/time/FastDateParser$Strategy;
    .locals 3
    .param p1, "formatField"    # Ljava/lang/String;
    .param p2, "definingCalendar"    # Ljava/util/Calendar;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 502
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 509
    :cond_0
    new-instance v0, Lorg/telegram/messenger/time/FastDateParser$CopyQuotedStrategy;

    invoke-direct {v0, p1}, Lorg/telegram/messenger/time/FastDateParser$CopyQuotedStrategy;-><init>(Ljava/lang/String;)V

    .line 546
    :goto_0
    return-object v0

    .line 504
    :sswitch_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_0

    .line 505
    new-instance v0, Lorg/telegram/messenger/time/FastDateParser$CopyQuotedStrategy;

    const/4 v1, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/messenger/time/FastDateParser$CopyQuotedStrategy;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 511
    :sswitch_1
    sget-object v0, Lorg/telegram/messenger/time/FastDateParser;->DAY_OF_YEAR_STRATEGY:Lorg/telegram/messenger/time/FastDateParser$Strategy;

    goto :goto_0

    .line 513
    :sswitch_2
    const/4 v0, 0x7

    invoke-direct {p0, v0, p2}, Lorg/telegram/messenger/time/FastDateParser;->getLocaleSpecificStrategy(ILjava/util/Calendar;)Lorg/telegram/messenger/time/FastDateParser$Strategy;

    move-result-object v0

    goto :goto_0

    .line 515
    :sswitch_3
    sget-object v0, Lorg/telegram/messenger/time/FastDateParser;->DAY_OF_WEEK_IN_MONTH_STRATEGY:Lorg/telegram/messenger/time/FastDateParser$Strategy;

    goto :goto_0

    .line 517
    :sswitch_4
    invoke-direct {p0, v1, p2}, Lorg/telegram/messenger/time/FastDateParser;->getLocaleSpecificStrategy(ILjava/util/Calendar;)Lorg/telegram/messenger/time/FastDateParser$Strategy;

    move-result-object v0

    goto :goto_0

    .line 519
    :sswitch_5
    sget-object v0, Lorg/telegram/messenger/time/FastDateParser;->MODULO_HOUR_OF_DAY_STRATEGY:Lorg/telegram/messenger/time/FastDateParser$Strategy;

    goto :goto_0

    .line 521
    :sswitch_6
    sget-object v0, Lorg/telegram/messenger/time/FastDateParser;->HOUR_STRATEGY:Lorg/telegram/messenger/time/FastDateParser$Strategy;

    goto :goto_0

    .line 523
    :sswitch_7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    invoke-direct {p0, v2, p2}, Lorg/telegram/messenger/time/FastDateParser;->getLocaleSpecificStrategy(ILjava/util/Calendar;)Lorg/telegram/messenger/time/FastDateParser$Strategy;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/telegram/messenger/time/FastDateParser;->NUMBER_MONTH_STRATEGY:Lorg/telegram/messenger/time/FastDateParser$Strategy;

    goto :goto_0

    .line 525
    :sswitch_8
    sget-object v0, Lorg/telegram/messenger/time/FastDateParser;->MILLISECOND_STRATEGY:Lorg/telegram/messenger/time/FastDateParser$Strategy;

    goto :goto_0

    .line 527
    :sswitch_9
    sget-object v0, Lorg/telegram/messenger/time/FastDateParser;->WEEK_OF_MONTH_STRATEGY:Lorg/telegram/messenger/time/FastDateParser$Strategy;

    goto :goto_0

    .line 529
    :sswitch_a
    const/16 v0, 0x9

    invoke-direct {p0, v0, p2}, Lorg/telegram/messenger/time/FastDateParser;->getLocaleSpecificStrategy(ILjava/util/Calendar;)Lorg/telegram/messenger/time/FastDateParser$Strategy;

    move-result-object v0

    goto :goto_0

    .line 531
    :sswitch_b
    sget-object v0, Lorg/telegram/messenger/time/FastDateParser;->DAY_OF_MONTH_STRATEGY:Lorg/telegram/messenger/time/FastDateParser$Strategy;

    goto :goto_0

    .line 533
    :sswitch_c
    sget-object v0, Lorg/telegram/messenger/time/FastDateParser;->MODULO_HOUR_STRATEGY:Lorg/telegram/messenger/time/FastDateParser$Strategy;

    goto :goto_0

    .line 535
    :sswitch_d
    sget-object v0, Lorg/telegram/messenger/time/FastDateParser;->HOUR_OF_DAY_STRATEGY:Lorg/telegram/messenger/time/FastDateParser$Strategy;

    goto :goto_0

    .line 537
    :sswitch_e
    sget-object v0, Lorg/telegram/messenger/time/FastDateParser;->MINUTE_STRATEGY:Lorg/telegram/messenger/time/FastDateParser$Strategy;

    goto :goto_0

    .line 539
    :sswitch_f
    sget-object v0, Lorg/telegram/messenger/time/FastDateParser;->SECOND_STRATEGY:Lorg/telegram/messenger/time/FastDateParser$Strategy;

    goto :goto_0

    .line 541
    :sswitch_10
    sget-object v0, Lorg/telegram/messenger/time/FastDateParser;->WEEK_OF_YEAR_STRATEGY:Lorg/telegram/messenger/time/FastDateParser$Strategy;

    goto :goto_0

    .line 543
    :sswitch_11
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_2

    sget-object v0, Lorg/telegram/messenger/time/FastDateParser;->LITERAL_YEAR_STRATEGY:Lorg/telegram/messenger/time/FastDateParser$Strategy;

    goto :goto_0

    :cond_2
    sget-object v0, Lorg/telegram/messenger/time/FastDateParser;->ABBREVIATED_YEAR_STRATEGY:Lorg/telegram/messenger/time/FastDateParser$Strategy;

    goto :goto_0

    .line 546
    :sswitch_12
    const/16 v0, 0xf

    invoke-direct {p0, v0, p2}, Lorg/telegram/messenger/time/FastDateParser;->getLocaleSpecificStrategy(ILjava/util/Calendar;)Lorg/telegram/messenger/time/FastDateParser$Strategy;

    move-result-object v0

    goto :goto_0

    .line 502
    :sswitch_data_0
    .sparse-switch
        0x27 -> :sswitch_0
        0x44 -> :sswitch_1
        0x45 -> :sswitch_2
        0x46 -> :sswitch_3
        0x47 -> :sswitch_4
        0x48 -> :sswitch_5
        0x4b -> :sswitch_6
        0x4d -> :sswitch_7
        0x53 -> :sswitch_8
        0x57 -> :sswitch_9
        0x5a -> :sswitch_12
        0x61 -> :sswitch_a
        0x64 -> :sswitch_b
        0x68 -> :sswitch_c
        0x6b -> :sswitch_d
        0x6d -> :sswitch_e
        0x73 -> :sswitch_f
        0x77 -> :sswitch_10
        0x79 -> :sswitch_11
        0x7a -> :sswitch_12
    .end sparse-switch
.end method

.method private init(Ljava/util/Calendar;)V
    .locals 9
    .param p1, "definingCalendar"    # Ljava/util/Calendar;

    .prologue
    const/4 v7, 0x0

    .line 139
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    .local v4, "regex":Ljava/lang/StringBuilder;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 142
    .local v0, "collector":Ljava/util/List;, "Ljava/util/List<Lorg/telegram/messenger/time/FastDateParser$Strategy;>;"
    sget-object v5, Lorg/telegram/messenger/time/FastDateParser;->formatPattern:Ljava/util/regex/Pattern;

    iget-object v6, p0, Lorg/telegram/messenger/time/FastDateParser;->pattern:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 143
    .local v3, "patternMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v5

    if-nez v5, :cond_0

    .line 144
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Illegal pattern character \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/messenger/time/FastDateParser;->pattern:Ljava/lang/String;

    .line 145
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->regionStart()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 148
    :cond_0
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/telegram/messenger/time/FastDateParser;->currentFormatField:Ljava/lang/String;

    .line 149
    iget-object v5, p0, Lorg/telegram/messenger/time/FastDateParser;->currentFormatField:Ljava/lang/String;

    invoke-direct {p0, v5, p1}, Lorg/telegram/messenger/time/FastDateParser;->getStrategy(Ljava/lang/String;Ljava/util/Calendar;)Lorg/telegram/messenger/time/FastDateParser$Strategy;

    move-result-object v1

    .line 151
    .local v1, "currentStrategy":Lorg/telegram/messenger/time/FastDateParser$Strategy;
    :goto_0
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    move-result v5

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->regionEnd()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    .line 152
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v5

    if-nez v5, :cond_1

    .line 153
    iput-object v7, p0, Lorg/telegram/messenger/time/FastDateParser;->nextStrategy:Lorg/telegram/messenger/time/FastDateParser$Strategy;

    .line 164
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->regionStart()I

    move-result v5

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->regionEnd()I

    move-result v6

    if-eq v5, v6, :cond_3

    .line 165
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Failed to parse \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/messenger/time/FastDateParser;->pattern:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\" ; gave up at index "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->regionStart()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 156
    :cond_1
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    .line 157
    .local v2, "nextFormatField":Ljava/lang/String;
    invoke-direct {p0, v2, p1}, Lorg/telegram/messenger/time/FastDateParser;->getStrategy(Ljava/lang/String;Ljava/util/Calendar;)Lorg/telegram/messenger/time/FastDateParser$Strategy;

    move-result-object v5

    iput-object v5, p0, Lorg/telegram/messenger/time/FastDateParser;->nextStrategy:Lorg/telegram/messenger/time/FastDateParser$Strategy;

    .line 158
    invoke-virtual {v1, p0, v4}, Lorg/telegram/messenger/time/FastDateParser$Strategy;->addRegex(Lorg/telegram/messenger/time/FastDateParser;Ljava/lang/StringBuilder;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 159
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    :cond_2
    iput-object v2, p0, Lorg/telegram/messenger/time/FastDateParser;->currentFormatField:Ljava/lang/String;

    .line 162
    iget-object v1, p0, Lorg/telegram/messenger/time/FastDateParser;->nextStrategy:Lorg/telegram/messenger/time/FastDateParser$Strategy;

    .line 163
    goto :goto_0

    .line 167
    .end local v2    # "nextFormatField":Ljava/lang/String;
    :cond_3
    invoke-virtual {v1, p0, v4}, Lorg/telegram/messenger/time/FastDateParser$Strategy;->addRegex(Lorg/telegram/messenger/time/FastDateParser;Ljava/lang/StringBuilder;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 168
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    :cond_4
    iput-object v7, p0, Lorg/telegram/messenger/time/FastDateParser;->currentFormatField:Ljava/lang/String;

    .line 171
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Lorg/telegram/messenger/time/FastDateParser$Strategy;

    invoke-interface {v0, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lorg/telegram/messenger/time/FastDateParser$Strategy;

    iput-object v5, p0, Lorg/telegram/messenger/time/FastDateParser;->strategies:[Lorg/telegram/messenger/time/FastDateParser$Strategy;

    .line 172
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    iput-object v5, p0, Lorg/telegram/messenger/time/FastDateParser;->parsePattern:Ljava/util/regex/Pattern;

    .line 173
    return-void
.end method

.method private static insertValuesInMap(Ljava/util/Map;[Ljava/lang/String;)V
    .locals 3
    .param p1, "values"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 391
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-nez p1, :cond_1

    .line 399
    :cond_0
    return-void

    .line 394
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 395
    aget-object v1, p1, v0

    if-eqz v1, :cond_2

    aget-object v1, p1, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 396
    aget-object v1, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 3
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 262
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 264
    iget-object v1, p0, Lorg/telegram/messenger/time/FastDateParser;->timeZone:Ljava/util/TimeZone;

    iget-object v2, p0, Lorg/telegram/messenger/time/FastDateParser;->locale:Ljava/util/Locale;

    invoke-static {v1, v2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    .line 265
    .local v0, "definingCalendar":Ljava/util/Calendar;
    invoke-direct {p0, v0}, Lorg/telegram/messenger/time/FastDateParser;->init(Ljava/util/Calendar;)V

    .line 266
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 221
    instance-of v2, p1, Lorg/telegram/messenger/time/FastDateParser;

    if-nez v2, :cond_1

    .line 225
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 224
    check-cast v0, Lorg/telegram/messenger/time/FastDateParser;

    .line 225
    .local v0, "other":Lorg/telegram/messenger/time/FastDateParser;
    iget-object v2, p0, Lorg/telegram/messenger/time/FastDateParser;->pattern:Ljava/lang/String;

    iget-object v3, v0, Lorg/telegram/messenger/time/FastDateParser;->pattern:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/messenger/time/FastDateParser;->timeZone:Ljava/util/TimeZone;

    iget-object v3, v0, Lorg/telegram/messenger/time/FastDateParser;->timeZone:Ljava/util/TimeZone;

    .line 226
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/messenger/time/FastDateParser;->locale:Ljava/util/Locale;

    iget-object v3, v0, Lorg/telegram/messenger/time/FastDateParser;->locale:Ljava/util/Locale;

    .line 227
    invoke-virtual {v2, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method getFieldWidth()I
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Lorg/telegram/messenger/time/FastDateParser;->currentFormatField:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lorg/telegram/messenger/time/FastDateParser;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method getParsePattern()Ljava/util/regex/Pattern;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lorg/telegram/messenger/time/FastDateParser;->parsePattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method public getPattern()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lorg/telegram/messenger/time/FastDateParser;->pattern:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeZone()Ljava/util/TimeZone;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lorg/telegram/messenger/time/FastDateParser;->timeZone:Ljava/util/TimeZone;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 237
    iget-object v0, p0, Lorg/telegram/messenger/time/FastDateParser;->pattern:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/messenger/time/FastDateParser;->timeZone:Ljava/util/TimeZone;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/messenger/time/FastDateParser;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->hashCode()I

    move-result v2

    mul-int/lit8 v2, v2, 0xd

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0xd

    add-int/2addr v0, v1

    return v0
.end method

.method isNextNumber()Z
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lorg/telegram/messenger/time/FastDateParser;->nextStrategy:Lorg/telegram/messenger/time/FastDateParser$Strategy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/time/FastDateParser;->nextStrategy:Lorg/telegram/messenger/time/FastDateParser$Strategy;

    invoke-virtual {v0}, Lorg/telegram/messenger/time/FastDateParser$Strategy;->isNumber()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public parse(Ljava/lang/String;)Ljava/util/Date;
    .locals 5
    .param p1, "source"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 281
    new-instance v1, Ljava/text/ParsePosition;

    invoke-direct {v1, v4}, Ljava/text/ParsePosition;-><init>(I)V

    invoke-virtual {p0, p1, v1}, Lorg/telegram/messenger/time/FastDateParser;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v0

    .line 282
    .local v0, "date":Ljava/util/Date;
    if-nez v0, :cond_1

    .line 284
    iget-object v1, p0, Lorg/telegram/messenger/time/FastDateParser;->locale:Ljava/util/Locale;

    sget-object v2, Lorg/telegram/messenger/time/FastDateParser;->JAPANESE_IMPERIAL:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 285
    new-instance v1, Ljava/text/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "(The "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/messenger/time/FastDateParser;->locale:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " locale does not support dates before 1868 AD)\nUnparseable date: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\" does not match "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/messenger/time/FastDateParser;->parsePattern:Ljava/util/regex/Pattern;

    .line 287
    invoke-virtual {v3}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 289
    :cond_0
    new-instance v1, Ljava/text/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unparseable date: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\" does not match "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/messenger/time/FastDateParser;->parsePattern:Ljava/util/regex/Pattern;

    invoke-virtual {v3}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 291
    :cond_1
    return-object v0
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    .locals 8
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    .prologue
    .line 307
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v4

    .line 308
    .local v4, "offset":I
    iget-object v6, p0, Lorg/telegram/messenger/time/FastDateParser;->parsePattern:Ljava/util/regex/Pattern;

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 309
    .local v3, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v6

    if-nez v6, :cond_0

    .line 310
    const/4 v6, 0x0

    .line 321
    :goto_0
    return-object v6

    .line 313
    :cond_0
    iget-object v6, p0, Lorg/telegram/messenger/time/FastDateParser;->timeZone:Ljava/util/TimeZone;

    iget-object v7, p0, Lorg/telegram/messenger/time/FastDateParser;->locale:Ljava/util/Locale;

    invoke-static {v6, v7}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    .line 314
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 316
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v6, p0, Lorg/telegram/messenger/time/FastDateParser;->strategies:[Lorg/telegram/messenger/time/FastDateParser$Strategy;

    array-length v6, v6

    if-ge v1, v6, :cond_1

    .line 317
    iget-object v6, p0, Lorg/telegram/messenger/time/FastDateParser;->strategies:[Lorg/telegram/messenger/time/FastDateParser$Strategy;

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    aget-object v5, v6, v1

    .line 318
    .local v5, "strategy":Lorg/telegram/messenger/time/FastDateParser$Strategy;
    invoke-virtual {v3, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, p0, v0, v6}, Lorg/telegram/messenger/time/FastDateParser$Strategy;->setCalendar(Lorg/telegram/messenger/time/FastDateParser;Ljava/util/Calendar;Ljava/lang/String;)V

    move v1, v2

    .line 319
    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_1

    .line 320
    .end local v5    # "strategy":Lorg/telegram/messenger/time/FastDateParser$Strategy;
    :cond_1
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    move-result v6

    add-int/2addr v6, v4

    invoke-virtual {p2, v6}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 321
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    goto :goto_0
.end method

.method public parseObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 273
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/time/FastDateParser;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    .prologue
    .line 299
    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/time/FastDateParser;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "FastDateParser["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/time/FastDateParser;->pattern:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/time/FastDateParser;->locale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/time/FastDateParser;->timeZone:Ljava/util/TimeZone;

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
