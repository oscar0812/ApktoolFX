.class final Lcom/stripe/android/net/StripeApiHandler$Parameter;
.super Ljava/lang/Object;
.source "StripeApiHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/android/net/StripeApiHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Parameter"
.end annotation


# instance fields
.field public final key:Ljava/lang/String;

.field public final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 530
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 531
    iput-object p1, p0, Lcom/stripe/android/net/StripeApiHandler$Parameter;->key:Ljava/lang/String;

    .line 532
    iput-object p2, p0, Lcom/stripe/android/net/StripeApiHandler$Parameter;->value:Ljava/lang/String;

    .line 533
    return-void
.end method
