.class public Lcom/stripe/android/exception/RateLimitException;
.super Lcom/stripe/android/exception/InvalidRequestException;
.source "RateLimitException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "param"    # Ljava/lang/String;
    .param p3, "requestId"    # Ljava/lang/String;
    .param p4, "statusCode"    # Ljava/lang/Integer;
    .param p5, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 14
    invoke-direct/range {p0 .. p5}, Lcom/stripe/android/exception/InvalidRequestException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Throwable;)V

    .line 15
    return-void
.end method
