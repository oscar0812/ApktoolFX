.class Lcom/stripe/android/Stripe$ResponseWrapper;
.super Ljava/lang/Object;
.source "Stripe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/android/Stripe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResponseWrapper"
.end annotation


# instance fields
.field final error:Ljava/lang/Exception;

.field final synthetic this$0:Lcom/stripe/android/Stripe;

.field final token:Lcom/stripe/android/model/Token;


# direct methods
.method private constructor <init>(Lcom/stripe/android/Stripe;Lcom/stripe/android/model/Token;Ljava/lang/Exception;)V
    .locals 0
    .param p2, "token"    # Lcom/stripe/android/model/Token;
    .param p3, "error"    # Ljava/lang/Exception;

    .prologue
    .line 260
    iput-object p1, p0, Lcom/stripe/android/Stripe$ResponseWrapper;->this$0:Lcom/stripe/android/Stripe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 261
    iput-object p3, p0, Lcom/stripe/android/Stripe$ResponseWrapper;->error:Ljava/lang/Exception;

    .line 262
    iput-object p2, p0, Lcom/stripe/android/Stripe$ResponseWrapper;->token:Lcom/stripe/android/model/Token;

    .line 263
    return-void
.end method

.method synthetic constructor <init>(Lcom/stripe/android/Stripe;Lcom/stripe/android/model/Token;Ljava/lang/Exception;Lcom/stripe/android/Stripe$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/stripe/android/Stripe;
    .param p2, "x1"    # Lcom/stripe/android/model/Token;
    .param p3, "x2"    # Ljava/lang/Exception;
    .param p4, "x3"    # Lcom/stripe/android/Stripe$1;

    .prologue
    .line 256
    invoke-direct {p0, p1, p2, p3}, Lcom/stripe/android/Stripe$ResponseWrapper;-><init>(Lcom/stripe/android/Stripe;Lcom/stripe/android/model/Token;Ljava/lang/Exception;)V

    return-void
.end method
