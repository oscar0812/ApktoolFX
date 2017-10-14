.class public Lcom/stripe/android/net/CardParser;
.super Ljava/lang/Object;
.source "CardParser.java"


# static fields
.field static final FIELD_ADDRESS_CITY:Ljava/lang/String; = "address_city"

.field static final FIELD_ADDRESS_COUNTRY:Ljava/lang/String; = "address_country"

.field static final FIELD_ADDRESS_LINE1:Ljava/lang/String; = "address_line1"

.field static final FIELD_ADDRESS_LINE2:Ljava/lang/String; = "address_line2"

.field static final FIELD_ADDRESS_STATE:Ljava/lang/String; = "address_state"

.field static final FIELD_ADDRESS_ZIP:Ljava/lang/String; = "address_zip"

.field static final FIELD_BRAND:Ljava/lang/String; = "brand"

.field static final FIELD_COUNTRY:Ljava/lang/String; = "country"

.field static final FIELD_CURRENCY:Ljava/lang/String; = "currency"

.field static final FIELD_EXP_MONTH:Ljava/lang/String; = "exp_month"

.field static final FIELD_EXP_YEAR:Ljava/lang/String; = "exp_year"

.field static final FIELD_FINGERPRINT:Ljava/lang/String; = "fingerprint"

.field static final FIELD_FUNDING:Ljava/lang/String; = "funding"

.field static final FIELD_LAST4:Ljava/lang/String; = "last4"

.field static final FIELD_NAME:Ljava/lang/String; = "name"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseCard(Ljava/lang/String;)Lcom/stripe/android/model/Card;
    .locals 2
    .param p0, "jsonCard"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 42
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 43
    .local v0, "cardObject":Lorg/json/JSONObject;
    invoke-static {v0}, Lcom/stripe/android/net/CardParser;->parseCard(Lorg/json/JSONObject;)Lcom/stripe/android/model/Card;

    move-result-object v1

    return-object v1
.end method

.method public static parseCard(Lorg/json/JSONObject;)Lcom/stripe/android/model/Card;
    .locals 20
    .param p0, "objectCard"    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 55
    new-instance v2, Lcom/stripe/android/model/Card;

    const/4 v3, 0x0

    const-string/jumbo v4, "exp_month"

    .line 57
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string/jumbo v5, "exp_year"

    .line 58
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    const-string/jumbo v7, "name"

    .line 60
    move-object/from16 v0, p0

    invoke-static {v0, v7}, Lcom/stripe/android/util/StripeJsonUtils;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "address_line1"

    .line 61
    move-object/from16 v0, p0

    invoke-static {v0, v8}, Lcom/stripe/android/util/StripeJsonUtils;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "address_line2"

    .line 62
    move-object/from16 v0, p0

    invoke-static {v0, v9}, Lcom/stripe/android/util/StripeJsonUtils;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "address_city"

    .line 63
    move-object/from16 v0, p0

    invoke-static {v0, v10}, Lcom/stripe/android/util/StripeJsonUtils;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "address_state"

    .line 64
    move-object/from16 v0, p0

    invoke-static {v0, v11}, Lcom/stripe/android/util/StripeJsonUtils;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "address_zip"

    .line 65
    move-object/from16 v0, p0

    invoke-static {v0, v12}, Lcom/stripe/android/util/StripeJsonUtils;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "address_country"

    .line 66
    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lcom/stripe/android/util/StripeJsonUtils;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "brand"

    .line 67
    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/stripe/android/util/StripeJsonUtils;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/stripe/android/util/StripeTextUtils;->asCardBrand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "last4"

    .line 68
    move-object/from16 v0, p0

    invoke-static {v0, v15}, Lcom/stripe/android/util/StripeJsonUtils;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v16, "fingerprint"

    .line 69
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/stripe/android/util/StripeJsonUtils;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string/jumbo v17, "funding"

    .line 70
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/stripe/android/util/StripeJsonUtils;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/stripe/android/util/StripeTextUtils;->asFundingType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string/jumbo v18, "country"

    .line 71
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/stripe/android/util/StripeJsonUtils;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string/jumbo v19, "currency"

    .line 72
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/stripe/android/util/StripeJsonUtils;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v2 .. v19}, Lcom/stripe/android/model/Card;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    return-object v2
.end method
