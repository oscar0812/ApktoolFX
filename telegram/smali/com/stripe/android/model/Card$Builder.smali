.class public Lcom/stripe/android/model/Card$Builder;
.super Ljava/lang/Object;
.source "Card.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/android/model/Card;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


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

.field private final cvc:Ljava/lang/String;

.field private final expMonth:Ljava/lang/Integer;

.field private final expYear:Ljava/lang/Integer;

.field private fingerprint:Ljava/lang/String;

.field private funding:Ljava/lang/String;

.field private last4:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Size;
        value = 0x4L
    .end annotation
.end field

.field private name:Ljava/lang/String;

.field private final number:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 0
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "expMonth"    # Ljava/lang/Integer;
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x1L
            to = 0xcL
        .end annotation
    .end param
    .param p3, "expYear"    # Ljava/lang/Integer;
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p4, "cvc"    # Ljava/lang/String;

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    iput-object p1, p0, Lcom/stripe/android/model/Card$Builder;->number:Ljava/lang/String;

    .line 124
    iput-object p2, p0, Lcom/stripe/android/model/Card$Builder;->expMonth:Ljava/lang/Integer;

    .line 125
    iput-object p3, p0, Lcom/stripe/android/model/Card$Builder;->expYear:Ljava/lang/Integer;

    .line 126
    iput-object p4, p0, Lcom/stripe/android/model/Card$Builder;->cvc:Ljava/lang/String;

    .line 127
    return-void
.end method

.method static synthetic access$100(Lcom/stripe/android/model/Card$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/stripe/android/model/Card$Builder;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/stripe/android/model/Card$Builder;->number:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/stripe/android/model/Card$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/stripe/android/model/Card$Builder;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/stripe/android/model/Card$Builder;->addressZip:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/stripe/android/model/Card$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/stripe/android/model/Card$Builder;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/stripe/android/model/Card$Builder;->addressCountry:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/stripe/android/model/Card$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/stripe/android/model/Card$Builder;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/stripe/android/model/Card$Builder;->last4:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/stripe/android/model/Card$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/stripe/android/model/Card$Builder;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/stripe/android/model/Card$Builder;->brand:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/stripe/android/model/Card$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/stripe/android/model/Card$Builder;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/stripe/android/model/Card$Builder;->fingerprint:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/stripe/android/model/Card$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/stripe/android/model/Card$Builder;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/stripe/android/model/Card$Builder;->funding:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/stripe/android/model/Card$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/stripe/android/model/Card$Builder;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/stripe/android/model/Card$Builder;->country:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/stripe/android/model/Card$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/stripe/android/model/Card$Builder;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/stripe/android/model/Card$Builder;->currency:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/stripe/android/model/Card$Builder;)Ljava/lang/Integer;
    .locals 1
    .param p0, "x0"    # Lcom/stripe/android/model/Card$Builder;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/stripe/android/model/Card$Builder;->expMonth:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$300(Lcom/stripe/android/model/Card$Builder;)Ljava/lang/Integer;
    .locals 1
    .param p0, "x0"    # Lcom/stripe/android/model/Card$Builder;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/stripe/android/model/Card$Builder;->expYear:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$400(Lcom/stripe/android/model/Card$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/stripe/android/model/Card$Builder;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/stripe/android/model/Card$Builder;->cvc:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/stripe/android/model/Card$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/stripe/android/model/Card$Builder;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/stripe/android/model/Card$Builder;->name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/stripe/android/model/Card$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/stripe/android/model/Card$Builder;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/stripe/android/model/Card$Builder;->addressLine1:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/stripe/android/model/Card$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/stripe/android/model/Card$Builder;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/stripe/android/model/Card$Builder;->addressLine2:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/stripe/android/model/Card$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/stripe/android/model/Card$Builder;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/stripe/android/model/Card$Builder;->addressCity:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/stripe/android/model/Card$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/stripe/android/model/Card$Builder;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/stripe/android/model/Card$Builder;->addressState:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public addressCity(Ljava/lang/String;)Lcom/stripe/android/model/Card$Builder;
    .locals 0
    .param p1, "city"    # Ljava/lang/String;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/stripe/android/model/Card$Builder;->addressCity:Ljava/lang/String;

    .line 146
    return-object p0
.end method

.method public addressCountry(Ljava/lang/String;)Lcom/stripe/android/model/Card$Builder;
    .locals 0
    .param p1, "country"    # Ljava/lang/String;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/stripe/android/model/Card$Builder;->addressCountry:Ljava/lang/String;

    .line 161
    return-object p0
.end method

.method public addressLine1(Ljava/lang/String;)Lcom/stripe/android/model/Card$Builder;
    .locals 0
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/stripe/android/model/Card$Builder;->addressLine1:Ljava/lang/String;

    .line 136
    return-object p0
.end method

.method public addressLine2(Ljava/lang/String;)Lcom/stripe/android/model/Card$Builder;
    .locals 0
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/stripe/android/model/Card$Builder;->addressLine2:Ljava/lang/String;

    .line 141
    return-object p0
.end method

.method public addressState(Ljava/lang/String;)Lcom/stripe/android/model/Card$Builder;
    .locals 0
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/stripe/android/model/Card$Builder;->addressState:Ljava/lang/String;

    .line 151
    return-object p0
.end method

.method public addressZip(Ljava/lang/String;)Lcom/stripe/android/model/Card$Builder;
    .locals 0
    .param p1, "zip"    # Ljava/lang/String;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/stripe/android/model/Card$Builder;->addressZip:Ljava/lang/String;

    .line 156
    return-object p0
.end method

.method public brand(Ljava/lang/String;)Lcom/stripe/android/model/Card$Builder;
    .locals 0
    .param p1, "brand"    # Ljava/lang/String;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/stripe/android/model/Card$Builder;->brand:Ljava/lang/String;

    .line 166
    return-object p0
.end method

.method public build()Lcom/stripe/android/model/Card;
    .locals 2

    .prologue
    .line 200
    new-instance v0, Lcom/stripe/android/model/Card;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/stripe/android/model/Card;-><init>(Lcom/stripe/android/model/Card$Builder;Lcom/stripe/android/model/Card$1;)V

    return-object v0
.end method

.method public country(Ljava/lang/String;)Lcom/stripe/android/model/Card$Builder;
    .locals 0
    .param p1, "country"    # Ljava/lang/String;

    .prologue
    .line 180
    iput-object p1, p0, Lcom/stripe/android/model/Card$Builder;->country:Ljava/lang/String;

    .line 181
    return-object p0
.end method

.method public currency(Ljava/lang/String;)Lcom/stripe/android/model/Card$Builder;
    .locals 0
    .param p1, "currency"    # Ljava/lang/String;

    .prologue
    .line 185
    iput-object p1, p0, Lcom/stripe/android/model/Card$Builder;->currency:Ljava/lang/String;

    .line 186
    return-object p0
.end method

.method public fingerprint(Ljava/lang/String;)Lcom/stripe/android/model/Card$Builder;
    .locals 0
    .param p1, "fingerprint"    # Ljava/lang/String;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/stripe/android/model/Card$Builder;->fingerprint:Ljava/lang/String;

    .line 171
    return-object p0
.end method

.method public funding(Ljava/lang/String;)Lcom/stripe/android/model/Card$Builder;
    .locals 0
    .param p1, "funding"    # Ljava/lang/String;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/stripe/android/model/Card$Builder;->funding:Ljava/lang/String;

    .line 176
    return-object p0
.end method

.method public last4(Ljava/lang/String;)Lcom/stripe/android/model/Card$Builder;
    .locals 0
    .param p1, "last4"    # Ljava/lang/String;

    .prologue
    .line 190
    iput-object p1, p0, Lcom/stripe/android/model/Card$Builder;->last4:Ljava/lang/String;

    .line 191
    return-object p0
.end method

.method public name(Ljava/lang/String;)Lcom/stripe/android/model/Card$Builder;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/stripe/android/model/Card$Builder;->name:Ljava/lang/String;

    .line 131
    return-object p0
.end method
