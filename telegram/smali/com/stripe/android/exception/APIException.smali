.class public Lcom/stripe/android/exception/APIException;
.super Lcom/stripe/android/exception/StripeException;
.source "APIException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "requestId"    # Ljava/lang/String;
    .param p3, "statusCode"    # Ljava/lang/Integer;
    .param p4, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 9
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/stripe/android/exception/StripeException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Throwable;)V

    .line 10
    return-void
.end method
