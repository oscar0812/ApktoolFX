.class Lcom/stripe/android/net/ErrorParser;
.super Ljava/lang/Object;
.source "ErrorParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/android/net/ErrorParser$StripeError;
    }
.end annotation


# static fields
.field private static final FIELD_CHARGE:Ljava/lang/String; = "charge"

.field private static final FIELD_CODE:Ljava/lang/String; = "code"

.field private static final FIELD_DECLINE_CODE:Ljava/lang/String; = "decline_code"

.field private static final FIELD_ERROR:Ljava/lang/String; = "error"

.field private static final FIELD_MESSAGE:Ljava/lang/String; = "message"

.field private static final FIELD_PARAM:Ljava/lang/String; = "param"

.field private static final FIELD_TYPE:Ljava/lang/String; = "type"

.field static final MALFORMED_RESPONSE_MESSAGE:Ljava/lang/String; = "An improperly formatted error response was found."
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static parseError(Ljava/lang/String;)Lcom/stripe/android/net/ErrorParser$StripeError;
    .locals 5
    .param p0, "rawError"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 30
    new-instance v3, Lcom/stripe/android/net/ErrorParser$StripeError;

    invoke-direct {v3}, Lcom/stripe/android/net/ErrorParser$StripeError;-><init>()V

    .line 32
    .local v3, "stripeError":Lcom/stripe/android/net/ErrorParser$StripeError;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 33
    .local v1, "jsonError":Lorg/json/JSONObject;
    const-string/jumbo v4, "error"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 34
    .local v0, "errorObject":Lorg/json/JSONObject;
    const-string/jumbo v4, "charge"

    invoke-static {v0, v4}, Lcom/stripe/android/util/StripeJsonUtils;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/stripe/android/net/ErrorParser$StripeError;->charge:Ljava/lang/String;

    .line 35
    const-string/jumbo v4, "code"

    invoke-static {v0, v4}, Lcom/stripe/android/util/StripeJsonUtils;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/stripe/android/net/ErrorParser$StripeError;->code:Ljava/lang/String;

    .line 36
    const-string/jumbo v4, "decline_code"

    invoke-static {v0, v4}, Lcom/stripe/android/util/StripeJsonUtils;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/stripe/android/net/ErrorParser$StripeError;->decline_code:Ljava/lang/String;

    .line 37
    const-string/jumbo v4, "message"

    invoke-static {v0, v4}, Lcom/stripe/android/util/StripeJsonUtils;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/stripe/android/net/ErrorParser$StripeError;->message:Ljava/lang/String;

    .line 38
    const-string/jumbo v4, "param"

    invoke-static {v0, v4}, Lcom/stripe/android/util/StripeJsonUtils;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/stripe/android/net/ErrorParser$StripeError;->param:Ljava/lang/String;

    .line 39
    const-string/jumbo v4, "type"

    invoke-static {v0, v4}, Lcom/stripe/android/util/StripeJsonUtils;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/stripe/android/net/ErrorParser$StripeError;->type:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .end local v0    # "errorObject":Lorg/json/JSONObject;
    .end local v1    # "jsonError":Lorg/json/JSONObject;
    :goto_0
    return-object v3

    .line 40
    :catch_0
    move-exception v2

    .line 41
    .local v2, "jsonException":Lorg/json/JSONException;
    const-string/jumbo v4, "An improperly formatted error response was found."

    iput-object v4, v3, Lcom/stripe/android/net/ErrorParser$StripeError;->message:Ljava/lang/String;

    goto :goto_0
.end method
