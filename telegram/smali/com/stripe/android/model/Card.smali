.class public Lcom/stripe/android/model/Card;
.super Ljava/lang/Object;
.source "Card.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/android/model/Card$Builder;,
        Lcom/stripe/android/model/Card$FundingType;,
        Lcom/stripe/android/model/Card$CardBrand;
    }
.end annotation


# static fields
.field public static final AMERICAN_EXPRESS:Ljava/lang/String; = "American Express"

.field public static final DINERS_CLUB:Ljava/lang/String; = "Diners Club"

.field public static final DISCOVER:Ljava/lang/String; = "Discover"

.field public static final FUNDING_CREDIT:Ljava/lang/String; = "credit"

.field public static final FUNDING_DEBIT:Ljava/lang/String; = "debit"

.field public static final FUNDING_PREPAID:Ljava/lang/String; = "prepaid"

.field public static final FUNDING_UNKNOWN:Ljava/lang/String; = "unknown"

.field public static final JCB:Ljava/lang/String; = "JCB"

.field public static final MASTERCARD:Ljava/lang/String; = "MasterCard"

.field public static final MAX_LENGTH_AMERICAN_EXPRESS:I = 0xf

.field public static final MAX_LENGTH_DINERS_CLUB:I = 0xe

.field public static final MAX_LENGTH_STANDARD:I = 0x10

.field public static final PREFIXES_AMERICAN_EXPRESS:[Ljava/lang/String;

.field public static final PREFIXES_DINERS_CLUB:[Ljava/lang/String;

.field public static final PREFIXES_DISCOVER:[Ljava/lang/String;

.field public static final PREFIXES_JCB:[Ljava/lang/String;

.field public static final PREFIXES_MASTERCARD:[Ljava/lang/String;

.field public static final PREFIXES_VISA:[Ljava/lang/String;

.field public static final UNKNOWN:Ljava/lang/String; = "Unknown"

.field public static final VISA:Ljava/lang/String; = "Visa"


# instance fields
.field private addressCity:Ljava/lang/String;

.field private addressCountry:Ljava/lang/String;

.field private addressLine1:Ljava/lang/String;

.field private addressLine2:Ljava/lang/String;

.field private addressState:Ljava/lang/String;

.field private addressZip:Ljava/lang/String;

.field private brand:Ljava/lang/String;

.field private country:Ljava/lang/String;

.field private currency:Ljava/lang/String;

.field private cvc:Ljava/lang/String;

.field private expMonth:Ljava/lang/Integer;

.field private expYear:Ljava/lang/Integer;

.field private fingerprint:Ljava/lang/String;

.field private funding:Ljava/lang/String;

.field private last4:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Size;
        value = 0x4L
    .end annotation
.end field

.field private name:Ljava/lang/String;

.field private number:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 53
    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "34"

    aput-object v1, v0, v3

    const-string/jumbo v1, "37"

    aput-object v1, v0, v4

    sput-object v0, Lcom/stripe/android/model/Card;->PREFIXES_AMERICAN_EXPRESS:[Ljava/lang/String;

    .line 54
    new-array v0, v7, [Ljava/lang/String;

    const-string/jumbo v1, "60"

    aput-object v1, v0, v3

    const-string/jumbo v1, "62"

    aput-object v1, v0, v4

    const-string/jumbo v1, "64"

    aput-object v1, v0, v5

    const-string/jumbo v1, "65"

    aput-object v1, v0, v6

    sput-object v0, Lcom/stripe/android/model/Card;->PREFIXES_DISCOVER:[Ljava/lang/String;

    .line 55
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "35"

    aput-object v1, v0, v3

    sput-object v0, Lcom/stripe/android/model/Card;->PREFIXES_JCB:[Ljava/lang/String;

    .line 56
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "300"

    aput-object v1, v0, v3

    const-string/jumbo v1, "301"

    aput-object v1, v0, v4

    const-string/jumbo v1, "302"

    aput-object v1, v0, v5

    const-string/jumbo v1, "303"

    aput-object v1, v0, v6

    const-string/jumbo v1, "304"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "305"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "309"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "36"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "38"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "39"

    aput-object v2, v0, v1

    sput-object v0, Lcom/stripe/android/model/Card;->PREFIXES_DINERS_CLUB:[Ljava/lang/String;

    .line 57
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "4"

    aput-object v1, v0, v3

    sput-object v0, Lcom/stripe/android/model/Card;->PREFIXES_VISA:[Ljava/lang/String;

    .line 58
    const/16 v0, 0x1d

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "2221"

    aput-object v1, v0, v3

    const-string/jumbo v1, "2222"

    aput-object v1, v0, v4

    const-string/jumbo v1, "2223"

    aput-object v1, v0, v5

    const-string/jumbo v1, "2224"

    aput-object v1, v0, v6

    const-string/jumbo v1, "2225"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "2226"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "2227"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "2228"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "2229"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "223"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "224"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "225"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "226"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "227"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "228"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "229"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "23"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "24"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "25"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "26"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "270"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string/jumbo v2, "271"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string/jumbo v2, "2720"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string/jumbo v2, "50"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string/jumbo v2, "51"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string/jumbo v2, "52"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string/jumbo v2, "53"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string/jumbo v2, "54"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string/jumbo v2, "55"

    aput-object v2, v0, v1

    sput-object v0, Lcom/stripe/android/model/Card;->PREFIXES_MASTERCARD:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/stripe/android/model/Card$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/stripe/android/model/Card$Builder;

    .prologue
    .line 707
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 708
    invoke-static {p1}, Lcom/stripe/android/model/Card$Builder;->access$100(Lcom/stripe/android/model/Card$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/stripe/android/model/Card;->normalizeCardNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/stripe/android/util/StripeTextUtils;->nullIfBlank(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/android/model/Card;->number:Ljava/lang/String;

    .line 709
    invoke-static {p1}, Lcom/stripe/android/model/Card$Builder;->access$200(Lcom/stripe/android/model/Card$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/android/model/Card;->expMonth:Ljava/lang/Integer;

    .line 710
    invoke-static {p1}, Lcom/stripe/android/model/Card$Builder;->access$300(Lcom/stripe/android/model/Card$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/android/model/Card;->expYear:Ljava/lang/Integer;

    .line 711
    invoke-static {p1}, Lcom/stripe/android/model/Card$Builder;->access$400(Lcom/stripe/android/model/Card$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/stripe/android/util/StripeTextUtils;->nullIfBlank(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/android/model/Card;->cvc:Ljava/lang/String;

    .line 712
    invoke-static {p1}, Lcom/stripe/android/model/Card$Builder;->access$500(Lcom/stripe/android/model/Card$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/stripe/android/util/StripeTextUtils;->nullIfBlank(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/android/model/Card;->name:Ljava/lang/String;

    .line 713
    invoke-static {p1}, Lcom/stripe/android/model/Card$Builder;->access$600(Lcom/stripe/android/model/Card$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/stripe/android/util/StripeTextUtils;->nullIfBlank(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/android/model/Card;->addressLine1:Ljava/lang/String;

    .line 714
    invoke-static {p1}, Lcom/stripe/android/model/Card$Builder;->access$700(Lcom/stripe/android/model/Card$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/stripe/android/util/StripeTextUtils;->nullIfBlank(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/android/model/Card;->addressLine2:Ljava/lang/String;

    .line 715
    invoke-static {p1}, Lcom/stripe/android/model/Card$Builder;->access$800(Lcom/stripe/android/model/Card$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/stripe/android/util/StripeTextUtils;->nullIfBlank(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/android/model/Card;->addressCity:Ljava/lang/String;

    .line 716
    invoke-static {p1}, Lcom/stripe/android/model/Card$Builder;->access$900(Lcom/stripe/android/model/Card$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/stripe/android/util/StripeTextUtils;->nullIfBlank(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/android/model/Card;->addressState:Ljava/lang/String;

    .line 717
    invoke-static {p1}, Lcom/stripe/android/model/Card$Builder;->access$1000(Lcom/stripe/android/model/Card$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/stripe/android/util/StripeTextUtils;->nullIfBlank(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/android/model/Card;->addressZip:Ljava/lang/String;

    .line 718
    invoke-static {p1}, Lcom/stripe/android/model/Card$Builder;->access$1100(Lcom/stripe/android/model/Card$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/stripe/android/util/StripeTextUtils;->nullIfBlank(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/android/model/Card;->addressCountry:Ljava/lang/String;

    .line 719
    invoke-static {p1}, Lcom/stripe/android/model/Card$Builder;->access$1200(Lcom/stripe/android/model/Card$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/stripe/android/util/StripeTextUtils;->nullIfBlank(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 720
    invoke-virtual {p0}, Lcom/stripe/android/model/Card;->getLast4()Ljava/lang/String;

    move-result-object v0

    .line 721
    :goto_0
    iput-object v0, p0, Lcom/stripe/android/model/Card;->last4:Ljava/lang/String;

    .line 722
    invoke-static {p1}, Lcom/stripe/android/model/Card$Builder;->access$1300(Lcom/stripe/android/model/Card$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/stripe/android/util/StripeTextUtils;->asCardBrand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 723
    invoke-virtual {p0}, Lcom/stripe/android/model/Card;->getBrand()Ljava/lang/String;

    move-result-object v0

    .line 724
    :goto_1
    iput-object v0, p0, Lcom/stripe/android/model/Card;->brand:Ljava/lang/String;

    .line 725
    invoke-static {p1}, Lcom/stripe/android/model/Card$Builder;->access$1400(Lcom/stripe/android/model/Card$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/stripe/android/util/StripeTextUtils;->nullIfBlank(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/android/model/Card;->fingerprint:Ljava/lang/String;

    .line 726
    invoke-static {p1}, Lcom/stripe/android/model/Card$Builder;->access$1500(Lcom/stripe/android/model/Card$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/stripe/android/util/StripeTextUtils;->asFundingType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/android/model/Card;->funding:Ljava/lang/String;

    .line 727
    invoke-static {p1}, Lcom/stripe/android/model/Card$Builder;->access$1600(Lcom/stripe/android/model/Card$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/stripe/android/util/StripeTextUtils;->nullIfBlank(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/android/model/Card;->country:Ljava/lang/String;

    .line 728
    invoke-static {p1}, Lcom/stripe/android/model/Card$Builder;->access$1700(Lcom/stripe/android/model/Card$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/stripe/android/util/StripeTextUtils;->nullIfBlank(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/android/model/Card;->currency:Ljava/lang/String;

    .line 729
    return-void

    .line 721
    :cond_0
    invoke-static {p1}, Lcom/stripe/android/model/Card$Builder;->access$1200(Lcom/stripe/android/model/Card$Builder;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 724
    :cond_1
    invoke-static {p1}, Lcom/stripe/android/model/Card$Builder;->access$1300(Lcom/stripe/android/model/Card$Builder;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method synthetic constructor <init>(Lcom/stripe/android/model/Card$Builder;Lcom/stripe/android/model/Card$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/stripe/android/model/Card$Builder;
    .param p2, "x1"    # Lcom/stripe/android/model/Card$1;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/stripe/android/model/Card;-><init>(Lcom/stripe/android/model/Card$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 18
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "expMonth"    # Ljava/lang/Integer;
    .param p3, "expYear"    # Ljava/lang/Integer;
    .param p4, "cvc"    # Ljava/lang/String;

    .prologue
    .line 324
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-direct/range {v0 .. v17}, Lcom/stripe/android/model/Card;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 18
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "expMonth"    # Ljava/lang/Integer;
    .param p3, "expYear"    # Ljava/lang/Integer;
    .param p4, "cvc"    # Ljava/lang/String;
    .param p5, "name"    # Ljava/lang/String;
    .param p6, "addressLine1"    # Ljava/lang/String;
    .param p7, "addressLine2"    # Ljava/lang/String;
    .param p8, "addressCity"    # Ljava/lang/String;
    .param p9, "addressState"    # Ljava/lang/String;
    .param p10, "addressZip"    # Ljava/lang/String;
    .param p11, "addressCountry"    # Ljava/lang/String;
    .param p12, "currency"    # Ljava/lang/String;

    .prologue
    .line 291
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v17, p12

    invoke-direct/range {v0 .. v17}, Lcom/stripe/android/model/Card;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "expMonth"    # Ljava/lang/Integer;
    .param p3, "expYear"    # Ljava/lang/Integer;
    .param p4, "cvc"    # Ljava/lang/String;
    .param p5, "name"    # Ljava/lang/String;
    .param p6, "addressLine1"    # Ljava/lang/String;
    .param p7, "addressLine2"    # Ljava/lang/String;
    .param p8, "addressCity"    # Ljava/lang/String;
    .param p9, "addressState"    # Ljava/lang/String;
    .param p10, "addressZip"    # Ljava/lang/String;
    .param p11, "addressCountry"    # Ljava/lang/String;
    .param p12, "brand"    # Ljava/lang/String;
    .param p13, "last4"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Size;
            value = 0x4L
        .end annotation
    .end param
    .param p14, "fingerprint"    # Ljava/lang/String;
    .param p15, "funding"    # Ljava/lang/String;
    .param p16, "country"    # Ljava/lang/String;
    .param p17, "currency"    # Ljava/lang/String;

    .prologue
    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    invoke-direct {p0, p1}, Lcom/stripe/android/model/Card;->normalizeCardNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/stripe/android/util/StripeTextUtils;->nullIfBlank(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/android/model/Card;->number:Ljava/lang/String;

    .line 244
    iput-object p2, p0, Lcom/stripe/android/model/Card;->expMonth:Ljava/lang/Integer;

    .line 245
    iput-object p3, p0, Lcom/stripe/android/model/Card;->expYear:Ljava/lang/Integer;

    .line 246
    invoke-static {p4}, Lcom/stripe/android/util/StripeTextUtils;->nullIfBlank(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/android/model/Card;->cvc:Ljava/lang/String;

    .line 247
    invoke-static {p5}, Lcom/stripe/android/util/StripeTextUtils;->nullIfBlank(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/android/model/Card;->name:Ljava/lang/String;

    .line 248
    invoke-static {p6}, Lcom/stripe/android/util/StripeTextUtils;->nullIfBlank(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/android/model/Card;->addressLine1:Ljava/lang/String;

    .line 249
    invoke-static {p7}, Lcom/stripe/android/util/StripeTextUtils;->nullIfBlank(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/android/model/Card;->addressLine2:Ljava/lang/String;

    .line 250
    invoke-static {p8}, Lcom/stripe/android/util/StripeTextUtils;->nullIfBlank(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/android/model/Card;->addressCity:Ljava/lang/String;

    .line 251
    invoke-static {p9}, Lcom/stripe/android/util/StripeTextUtils;->nullIfBlank(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/android/model/Card;->addressState:Ljava/lang/String;

    .line 252
    invoke-static {p10}, Lcom/stripe/android/util/StripeTextUtils;->nullIfBlank(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/android/model/Card;->addressZip:Ljava/lang/String;

    .line 253
    invoke-static {p11}, Lcom/stripe/android/util/StripeTextUtils;->nullIfBlank(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/android/model/Card;->addressCountry:Ljava/lang/String;

    .line 254
    invoke-static {p12}, Lcom/stripe/android/util/StripeTextUtils;->asCardBrand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/stripe/android/model/Card;->getBrand()Ljava/lang/String;

    move-result-object p12

    .end local p12    # "brand":Ljava/lang/String;
    :cond_0
    iput-object p12, p0, Lcom/stripe/android/model/Card;->brand:Ljava/lang/String;

    .line 255
    invoke-static {p13}, Lcom/stripe/android/util/StripeTextUtils;->nullIfBlank(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/stripe/android/model/Card;->getLast4()Ljava/lang/String;

    move-result-object p13

    .end local p13    # "last4":Ljava/lang/String;
    :cond_1
    iput-object p13, p0, Lcom/stripe/android/model/Card;->last4:Ljava/lang/String;

    .line 256
    invoke-static {p14}, Lcom/stripe/android/util/StripeTextUtils;->nullIfBlank(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/android/model/Card;->fingerprint:Ljava/lang/String;

    .line 257
    invoke-static/range {p15 .. p15}, Lcom/stripe/android/util/StripeTextUtils;->asFundingType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/android/model/Card;->funding:Ljava/lang/String;

    .line 258
    invoke-static/range {p16 .. p16}, Lcom/stripe/android/util/StripeTextUtils;->nullIfBlank(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/android/model/Card;->country:Ljava/lang/String;

    .line 259
    invoke-static/range {p17 .. p17}, Lcom/stripe/android/util/StripeTextUtils;->nullIfBlank(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/android/model/Card;->currency:Ljava/lang/String;

    .line 260
    return-void
.end method

.method private isValidLuhnNumber(Ljava/lang/String;)Z
    .locals 9
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 732
    const/4 v3, 0x1

    .line 733
    .local v3, "isOdd":Z
    const/4 v4, 0x0

    .line 735
    .local v4, "sum":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v2, v7, -0x1

    .local v2, "index":I
    :goto_0
    if-ltz v2, :cond_4

    .line 736
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 737
    .local v0, "c":C
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v7

    if-nez v7, :cond_0

    .line 754
    .end local v0    # "c":C
    :goto_1
    return v6

    .line 740
    .restart local v0    # "c":C
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 741
    .local v1, "digitInteger":I
    if-nez v3, :cond_3

    move v3, v5

    .line 743
    :goto_2
    if-eqz v3, :cond_1

    .line 744
    mul-int/lit8 v1, v1, 0x2

    .line 747
    :cond_1
    const/16 v7, 0x9

    if-le v1, v7, :cond_2

    .line 748
    add-int/lit8 v1, v1, -0x9

    .line 751
    :cond_2
    add-int/2addr v4, v1

    .line 735
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_3
    move v3, v6

    .line 741
    goto :goto_2

    .line 754
    .end local v0    # "c":C
    .end local v1    # "digitInteger":I
    :cond_4
    rem-int/lit8 v7, v4, 0xa

    if-nez v7, :cond_5

    :goto_3
    move v6, v5

    goto :goto_1

    :cond_5
    move v5, v6

    goto :goto_3
.end method

.method private normalizeCardNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 758
    if-nez p1, :cond_0

    .line 759
    const/4 v0, 0x0

    .line 761
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "\\s+|-"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getAddressCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 553
    iget-object v0, p0, Lcom/stripe/android/model/Card;->addressCity:Ljava/lang/String;

    return-object v0
.end method

.method public getAddressCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 598
    iget-object v0, p0, Lcom/stripe/android/model/Card;->addressCountry:Ljava/lang/String;

    return-object v0
.end method

.method public getAddressLine1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 523
    iget-object v0, p0, Lcom/stripe/android/model/Card;->addressLine1:Ljava/lang/String;

    return-object v0
.end method

.method public getAddressLine2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 538
    iget-object v0, p0, Lcom/stripe/android/model/Card;->addressLine2:Ljava/lang/String;

    return-object v0
.end method

.method public getAddressState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 583
    iget-object v0, p0, Lcom/stripe/android/model/Card;->addressState:Ljava/lang/String;

    return-object v0
.end method

.method public getAddressZip()Ljava/lang/String;
    .locals 1

    .prologue
    .line 568
    iget-object v0, p0, Lcom/stripe/android/model/Card;->addressZip:Ljava/lang/String;

    return-object v0
.end method

.method public getBrand()Ljava/lang/String;
    .locals 3

    .prologue
    .line 661
    iget-object v1, p0, Lcom/stripe/android/model/Card;->brand:Ljava/lang/String;

    invoke-static {v1}, Lcom/stripe/android/util/StripeTextUtils;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/stripe/android/model/Card;->number:Ljava/lang/String;

    invoke-static {v1}, Lcom/stripe/android/util/StripeTextUtils;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 663
    iget-object v1, p0, Lcom/stripe/android/model/Card;->number:Ljava/lang/String;

    sget-object v2, Lcom/stripe/android/model/Card;->PREFIXES_AMERICAN_EXPRESS:[Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/stripe/android/util/StripeTextUtils;->hasAnyPrefix(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 664
    const-string/jumbo v0, "American Express"

    .line 678
    .local v0, "evaluatedType":Ljava/lang/String;
    :goto_0
    iput-object v0, p0, Lcom/stripe/android/model/Card;->brand:Ljava/lang/String;

    .line 681
    .end local v0    # "evaluatedType":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/stripe/android/model/Card;->brand:Ljava/lang/String;

    return-object v1

    .line 665
    :cond_1
    iget-object v1, p0, Lcom/stripe/android/model/Card;->number:Ljava/lang/String;

    sget-object v2, Lcom/stripe/android/model/Card;->PREFIXES_DISCOVER:[Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/stripe/android/util/StripeTextUtils;->hasAnyPrefix(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 666
    const-string/jumbo v0, "Discover"

    .restart local v0    # "evaluatedType":Ljava/lang/String;
    goto :goto_0

    .line 667
    .end local v0    # "evaluatedType":Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/stripe/android/model/Card;->number:Ljava/lang/String;

    sget-object v2, Lcom/stripe/android/model/Card;->PREFIXES_JCB:[Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/stripe/android/util/StripeTextUtils;->hasAnyPrefix(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 668
    const-string/jumbo v0, "JCB"

    .restart local v0    # "evaluatedType":Ljava/lang/String;
    goto :goto_0

    .line 669
    .end local v0    # "evaluatedType":Ljava/lang/String;
    :cond_3
    iget-object v1, p0, Lcom/stripe/android/model/Card;->number:Ljava/lang/String;

    sget-object v2, Lcom/stripe/android/model/Card;->PREFIXES_DINERS_CLUB:[Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/stripe/android/util/StripeTextUtils;->hasAnyPrefix(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 670
    const-string/jumbo v0, "Diners Club"

    .restart local v0    # "evaluatedType":Ljava/lang/String;
    goto :goto_0

    .line 671
    .end local v0    # "evaluatedType":Ljava/lang/String;
    :cond_4
    iget-object v1, p0, Lcom/stripe/android/model/Card;->number:Ljava/lang/String;

    sget-object v2, Lcom/stripe/android/model/Card;->PREFIXES_VISA:[Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/stripe/android/util/StripeTextUtils;->hasAnyPrefix(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 672
    const-string/jumbo v0, "Visa"

    .restart local v0    # "evaluatedType":Ljava/lang/String;
    goto :goto_0

    .line 673
    .end local v0    # "evaluatedType":Ljava/lang/String;
    :cond_5
    iget-object v1, p0, Lcom/stripe/android/model/Card;->number:Ljava/lang/String;

    sget-object v2, Lcom/stripe/android/model/Card;->PREFIXES_MASTERCARD:[Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/stripe/android/util/StripeTextUtils;->hasAnyPrefix(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 674
    const-string/jumbo v0, "MasterCard"

    .restart local v0    # "evaluatedType":Ljava/lang/String;
    goto :goto_0

    .line 676
    .end local v0    # "evaluatedType":Ljava/lang/String;
    :cond_6
    const-string/jumbo v0, "Unknown"

    .restart local v0    # "evaluatedType":Ljava/lang/String;
    goto :goto_0
.end method

.method public getCVC()Ljava/lang/String;
    .locals 1

    .prologue
    .line 461
    iget-object v0, p0, Lcom/stripe/android/model/Card;->cvc:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 704
    iget-object v0, p0, Lcom/stripe/android/model/Card;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrency()Ljava/lang/String;
    .locals 1

    .prologue
    .line 613
    iget-object v0, p0, Lcom/stripe/android/model/Card;->currency:Ljava/lang/String;

    return-object v0
.end method

.method public getExpMonth()Ljava/lang/Integer;
    .locals 1
    .annotation build Landroid/support/annotation/IntRange;
        from = 0x1L
        to = 0xcL
    .end annotation

    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 478
    iget-object v0, p0, Lcom/stripe/android/model/Card;->expMonth:Ljava/lang/Integer;

    return-object v0
.end method

.method public getExpYear()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 493
    iget-object v0, p0, Lcom/stripe/android/model/Card;->expYear:Ljava/lang/Integer;

    return-object v0
.end method

.method public getFingerprint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 688
    iget-object v0, p0, Lcom/stripe/android/model/Card;->fingerprint:Ljava/lang/String;

    return-object v0
.end method

.method public getFunding()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 697
    iget-object v0, p0, Lcom/stripe/android/model/Card;->funding:Ljava/lang/String;

    return-object v0
.end method

.method public getLast4()Ljava/lang/String;
    .locals 3

    .prologue
    .line 629
    iget-object v0, p0, Lcom/stripe/android/model/Card;->last4:Ljava/lang/String;

    invoke-static {v0}, Lcom/stripe/android/util/StripeTextUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 630
    iget-object v0, p0, Lcom/stripe/android/model/Card;->last4:Ljava/lang/String;

    .line 638
    :goto_0
    return-object v0

    .line 633
    :cond_0
    iget-object v0, p0, Lcom/stripe/android/model/Card;->number:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/stripe/android/model/Card;->number:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_1

    .line 634
    iget-object v0, p0, Lcom/stripe/android/model/Card;->number:Ljava/lang/String;

    iget-object v1, p0, Lcom/stripe/android/model/Card;->number:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    iget-object v2, p0, Lcom/stripe/android/model/Card;->number:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/android/model/Card;->last4:Ljava/lang/String;

    .line 635
    iget-object v0, p0, Lcom/stripe/android/model/Card;->last4:Ljava/lang/String;

    goto :goto_0

    .line 638
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lcom/stripe/android/model/Card;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lcom/stripe/android/model/Card;->number:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 650
    invoke-virtual {p0}, Lcom/stripe/android/model/Card;->getBrand()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setAddressCity(Ljava/lang/String;)V
    .locals 0
    .param p1, "addressCity"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 561
    iput-object p1, p0, Lcom/stripe/android/model/Card;->addressCity:Ljava/lang/String;

    .line 562
    return-void
.end method

.method public setAddressCountry(Ljava/lang/String;)V
    .locals 0
    .param p1, "addressCountry"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 606
    iput-object p1, p0, Lcom/stripe/android/model/Card;->addressCountry:Ljava/lang/String;

    .line 607
    return-void
.end method

.method public setAddressLine1(Ljava/lang/String;)V
    .locals 0
    .param p1, "addressLine1"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 531
    iput-object p1, p0, Lcom/stripe/android/model/Card;->addressLine1:Ljava/lang/String;

    .line 532
    return-void
.end method

.method public setAddressLine2(Ljava/lang/String;)V
    .locals 0
    .param p1, "addressLine2"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 546
    iput-object p1, p0, Lcom/stripe/android/model/Card;->addressLine2:Ljava/lang/String;

    .line 547
    return-void
.end method

.method public setAddressState(Ljava/lang/String;)V
    .locals 0
    .param p1, "addressState"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 591
    iput-object p1, p0, Lcom/stripe/android/model/Card;->addressState:Ljava/lang/String;

    .line 592
    return-void
.end method

.method public setAddressZip(Ljava/lang/String;)V
    .locals 0
    .param p1, "addressZip"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 576
    iput-object p1, p0, Lcom/stripe/android/model/Card;->addressZip:Ljava/lang/String;

    .line 577
    return-void
.end method

.method public setCVC(Ljava/lang/String;)V
    .locals 0
    .param p1, "cvc"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 469
    iput-object p1, p0, Lcom/stripe/android/model/Card;->cvc:Ljava/lang/String;

    .line 470
    return-void
.end method

.method public setCurrency(Ljava/lang/String;)V
    .locals 0
    .param p1, "currency"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 621
    iput-object p1, p0, Lcom/stripe/android/model/Card;->currency:Ljava/lang/String;

    .line 622
    return-void
.end method

.method public setExpMonth(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "expMonth"    # Ljava/lang/Integer;
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x1L
            to = 0xcL
        .end annotation

        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 486
    iput-object p1, p0, Lcom/stripe/android/model/Card;->expMonth:Ljava/lang/Integer;

    .line 487
    return-void
.end method

.method public setExpYear(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "expYear"    # Ljava/lang/Integer;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 501
    iput-object p1, p0, Lcom/stripe/android/model/Card;->expYear:Ljava/lang/Integer;

    .line 502
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 516
    iput-object p1, p0, Lcom/stripe/android/model/Card;->name:Ljava/lang/String;

    .line 517
    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 1
    .param p1, "number"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 452
    iput-object p1, p0, Lcom/stripe/android/model/Card;->number:Ljava/lang/String;

    .line 453
    iput-object v0, p0, Lcom/stripe/android/model/Card;->brand:Ljava/lang/String;

    .line 454
    iput-object v0, p0, Lcom/stripe/android/model/Card;->last4:Ljava/lang/String;

    .line 455
    return-void
.end method

.method public validateCVC()Z
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 406
    iget-object v5, p0, Lcom/stripe/android/model/Card;->cvc:Ljava/lang/String;

    invoke-static {v5}, Lcom/stripe/android/util/StripeTextUtils;->isBlank(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 416
    :goto_0
    return v3

    .line 409
    :cond_0
    iget-object v5, p0, Lcom/stripe/android/model/Card;->cvc:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 410
    .local v0, "cvcValue":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/stripe/android/model/Card;->getBrand()Ljava/lang/String;

    move-result-object v1

    .line 411
    .local v1, "updatedType":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 412
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v6, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v7, :cond_3

    :cond_1
    const-string/jumbo v5, "American Express"

    .line 413
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v5, v7, :cond_3

    .line 414
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v5, v6, :cond_4

    :cond_3
    move v2, v4

    .line 416
    .local v2, "validLength":Z
    :goto_1
    invoke-static {v0}, Lcom/stripe/android/util/StripeTextUtils;->isWholePositiveNumber(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    if-eqz v2, :cond_5

    :goto_2
    move v3, v4

    goto :goto_0

    .end local v2    # "validLength":Z
    :cond_4
    move v2, v3

    .line 414
    goto :goto_1

    .restart local v2    # "validLength":Z
    :cond_5
    move v4, v3

    .line 416
    goto :goto_2
.end method

.method public validateCard()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 350
    iget-object v2, p0, Lcom/stripe/android/model/Card;->cvc:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 351
    invoke-virtual {p0}, Lcom/stripe/android/model/Card;->validateNumber()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/stripe/android/model/Card;->validateExpiryDate()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 353
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 351
    goto :goto_0

    .line 353
    :cond_2
    invoke-virtual {p0}, Lcom/stripe/android/model/Card;->validateNumber()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/stripe/android/model/Card;->validateExpiryDate()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/stripe/android/model/Card;->validateCVC()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public validateExpMonth()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 425
    iget-object v1, p0, Lcom/stripe/android/model/Card;->expMonth:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/stripe/android/model/Card;->expMonth:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lt v1, v0, :cond_0

    iget-object v1, p0, Lcom/stripe/android/model/Card;->expMonth:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xc

    if-gt v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public validateExpYear()Z
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lcom/stripe/android/model/Card;->expYear:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/stripe/android/model/Card;->expYear:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/stripe/android/util/DateUtils;->hasYearPassed(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public validateExpiryDate()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 391
    invoke-virtual {p0}, Lcom/stripe/android/model/Card;->validateExpMonth()Z

    move-result v1

    if-nez v1, :cond_1

    .line 397
    :cond_0
    :goto_0
    return v0

    .line 394
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/android/model/Card;->validateExpYear()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 397
    iget-object v1, p0, Lcom/stripe/android/model/Card;->expYear:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/stripe/android/model/Card;->expMonth:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/stripe/android/util/DateUtils;->hasMonthPassed(II)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public validateNumber()Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 363
    iget-object v4, p0, Lcom/stripe/android/model/Card;->number:Ljava/lang/String;

    invoke-static {v4}, Lcom/stripe/android/util/StripeTextUtils;->isBlank(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v2, v3

    .line 380
    :cond_0
    :goto_0
    return v2

    .line 367
    :cond_1
    iget-object v4, p0, Lcom/stripe/android/model/Card;->number:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "\\s+|-"

    const-string/jumbo v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 368
    .local v0, "rawNumber":Ljava/lang/String;
    invoke-static {v0}, Lcom/stripe/android/util/StripeTextUtils;->isBlank(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 369
    invoke-static {v0}, Lcom/stripe/android/util/StripeTextUtils;->isWholePositiveNumber(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 370
    invoke-direct {p0, v0}, Lcom/stripe/android/model/Card;->isValidLuhnNumber(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    :cond_2
    move v2, v3

    .line 371
    goto :goto_0

    .line 374
    :cond_3
    invoke-virtual {p0}, Lcom/stripe/android/model/Card;->getBrand()Ljava/lang/String;

    move-result-object v1

    .line 375
    .local v1, "updatedType":Ljava/lang/String;
    const-string/jumbo v4, "American Express"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 376
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0xf

    if-eq v4, v5, :cond_0

    move v2, v3

    goto :goto_0

    .line 377
    :cond_4
    const-string/jumbo v4, "Diners Club"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 378
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0xe

    if-eq v4, v5, :cond_0

    move v2, v3

    goto :goto_0

    .line 380
    :cond_5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x10

    if-eq v4, v5, :cond_0

    move v2, v3

    goto :goto_0
.end method
