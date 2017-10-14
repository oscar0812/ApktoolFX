.class Lcom/stripe/android/net/ErrorParser$StripeError;
.super Ljava/lang/Object;
.source "ErrorParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/android/net/ErrorParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StripeError"
.end annotation


# instance fields
.field public charge:Ljava/lang/String;

.field public code:Ljava/lang/String;

.field public decline_code:Ljava/lang/String;

.field public message:Ljava/lang/String;

.field public param:Ljava/lang/String;

.field public type:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
