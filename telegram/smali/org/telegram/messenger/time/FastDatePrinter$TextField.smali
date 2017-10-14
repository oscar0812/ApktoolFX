.class Lorg/telegram/messenger/time/FastDatePrinter$TextField;
.super Ljava/lang/Object;
.source "FastDatePrinter.java"

# interfaces
.implements Lorg/telegram/messenger/time/FastDatePrinter$Rule;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/time/FastDatePrinter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TextField"
.end annotation


# instance fields
.field private final mField:I

.field private final mValues:[Ljava/lang/String;


# direct methods
.method constructor <init>(I[Ljava/lang/String;)V
    .locals 0
    .param p1, "field"    # I
    .param p2, "values"    # [Ljava/lang/String;

    .prologue
    .line 694
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 695
    iput p1, p0, Lorg/telegram/messenger/time/FastDatePrinter$TextField;->mField:I

    .line 696
    iput-object p2, p0, Lorg/telegram/messenger/time/FastDatePrinter$TextField;->mValues:[Ljava/lang/String;

    .line 697
    return-void
.end method


# virtual methods
.method public appendTo(Ljava/lang/StringBuffer;Ljava/util/Calendar;)V
    .locals 2
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "calendar"    # Ljava/util/Calendar;

    .prologue
    .line 719
    iget-object v0, p0, Lorg/telegram/messenger/time/FastDatePrinter$TextField;->mValues:[Ljava/lang/String;

    iget v1, p0, Lorg/telegram/messenger/time/FastDatePrinter$TextField;->mField:I

    invoke-virtual {p2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 720
    return-void
.end method

.method public estimateLength()I
    .locals 4

    .prologue
    .line 704
    const/4 v2, 0x0

    .line 705
    .local v2, "max":I
    iget-object v3, p0, Lorg/telegram/messenger/time/FastDatePrinter$TextField;->mValues:[Ljava/lang/String;

    array-length v0, v3

    .local v0, "i":I
    :cond_0
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    .line 706
    iget-object v3, p0, Lorg/telegram/messenger/time/FastDatePrinter$TextField;->mValues:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    .line 707
    .local v1, "len":I
    if-le v1, v2, :cond_0

    .line 708
    move v2, v1

    goto :goto_0

    .line 711
    .end local v1    # "len":I
    :cond_1
    return v2
.end method
