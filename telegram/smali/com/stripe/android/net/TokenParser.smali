.class public Lcom/stripe/android/net/TokenParser;
.super Ljava/lang/Object;
.source "TokenParser.java"


# static fields
.field private static final FIELD_CARD:Ljava/lang/String; = "card"

.field private static final FIELD_CREATED:Ljava/lang/String; = "created"

.field private static final FIELD_ID:Ljava/lang/String; = "id"

.field private static final FIELD_LIVEMODE:Ljava/lang/String; = "livemode"

.field private static final FIELD_TYPE:Ljava/lang/String; = "type"

.field private static final FIELD_USED:Ljava/lang/String; = "used"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseToken(Ljava/lang/String;)Lcom/stripe/android/model/Token;
    .locals 18
    .param p0, "jsonToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 26
    new-instance v11, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 27
    .local v11, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v2, "id"

    invoke-static {v11, v2}, Lcom/stripe/android/util/StripeJsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 28
    .local v3, "tokenId":Ljava/lang/String;
    const-string/jumbo v2, "created"

    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 29
    .local v10, "createdTimeStamp":Ljava/lang/Long;
    const-string/jumbo v2, "livemode"

    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    .line 30
    .local v12, "liveMode":Ljava/lang/Boolean;
    const-string/jumbo v2, "type"

    .line 31
    invoke-static {v11, v2}, Lcom/stripe/android/util/StripeJsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/stripe/android/util/StripeTextUtils;->asTokenType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 32
    .local v8, "tokenType":Ljava/lang/String;
    const-string/jumbo v2, "used"

    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 34
    .local v6, "used":Ljava/lang/Boolean;
    const-string/jumbo v2, "card"

    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    .line 35
    .local v9, "cardObject":Lorg/json/JSONObject;
    invoke-static {v9}, Lcom/stripe/android/net/CardParser;->parseCard(Lorg/json/JSONObject;)Lcom/stripe/android/model/Card;

    move-result-object v7

    .line 37
    .local v7, "card":Lcom/stripe/android/model/Card;
    new-instance v5, Ljava/util/Date;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    const-wide/16 v16, 0x3e8

    mul-long v14, v14, v16

    invoke-direct {v5, v14, v15}, Ljava/util/Date;-><init>(J)V

    .line 39
    .local v5, "date":Ljava/util/Date;
    new-instance v2, Lcom/stripe/android/model/Token;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-direct/range {v2 .. v8}, Lcom/stripe/android/model/Token;-><init>(Ljava/lang/String;ZLjava/util/Date;Ljava/lang/Boolean;Lcom/stripe/android/model/Card;Ljava/lang/String;)V

    return-object v2
.end method
