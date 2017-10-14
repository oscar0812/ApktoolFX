.class public Lcom/stripe/android/exception/PermissionException;
.super Lcom/stripe/android/exception/AuthenticationException;
.source "PermissionException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "requestId"    # Ljava/lang/String;
    .param p3, "statusCode"    # Ljava/lang/Integer;

    .prologue
    .line 10
    invoke-direct {p0, p1, p2, p3}, Lcom/stripe/android/exception/AuthenticationException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 11
    return-void
.end method
