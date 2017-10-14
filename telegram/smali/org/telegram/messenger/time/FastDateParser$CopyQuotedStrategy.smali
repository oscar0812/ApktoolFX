.class Lorg/telegram/messenger/time/FastDateParser$CopyQuotedStrategy;
.super Lorg/telegram/messenger/time/FastDateParser$Strategy;
.source "FastDateParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/time/FastDateParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CopyQuotedStrategy"
.end annotation


# instance fields
.field private final formatField:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "formatField"    # Ljava/lang/String;

    .prologue
    .line 601
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/messenger/time/FastDateParser$Strategy;-><init>(Lorg/telegram/messenger/time/FastDateParser$1;)V

    .line 602
    iput-object p1, p0, Lorg/telegram/messenger/time/FastDateParser$CopyQuotedStrategy;->formatField:Ljava/lang/String;

    .line 603
    return-void
.end method


# virtual methods
.method addRegex(Lorg/telegram/messenger/time/FastDateParser;Ljava/lang/StringBuilder;)Z
    .locals 2
    .param p1, "parser"    # Lorg/telegram/messenger/time/FastDateParser;
    .param p2, "regex"    # Ljava/lang/StringBuilder;

    .prologue
    .line 622
    iget-object v0, p0, Lorg/telegram/messenger/time/FastDateParser$CopyQuotedStrategy;->formatField:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {p2, v0, v1}, Lorg/telegram/messenger/time/FastDateParser;->access$100(Ljava/lang/StringBuilder;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    .line 623
    const/4 v0, 0x0

    return v0
.end method

.method isNumber()Z
    .locals 3

    .prologue
    .line 610
    iget-object v1, p0, Lorg/telegram/messenger/time/FastDateParser$CopyQuotedStrategy;->formatField:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 611
    .local v0, "c":C
    const/16 v1, 0x27

    if-ne v0, v1, :cond_0

    .line 612
    iget-object v1, p0, Lorg/telegram/messenger/time/FastDateParser$CopyQuotedStrategy;->formatField:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 614
    :cond_0
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    return v1
.end method
