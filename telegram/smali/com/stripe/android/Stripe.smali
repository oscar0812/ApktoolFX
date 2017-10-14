.class public Lcom/stripe/android/Stripe;
.super Ljava/lang/Object;
.source "Stripe.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/android/Stripe$TokenCreator;,
        Lcom/stripe/android/Stripe$ResponseWrapper;
    }
.end annotation


# instance fields
.field private defaultPublishableKey:Ljava/lang/String;

.field tokenCreator:Lcom/stripe/android/Stripe$TokenCreator;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lcom/stripe/android/Stripe$1;

    invoke-direct {v0, p0}, Lcom/stripe/android/Stripe$1;-><init>(Lcom/stripe/android/Stripe;)V

    iput-object v0, p0, Lcom/stripe/android/Stripe;->tokenCreator:Lcom/stripe/android/Stripe$TokenCreator;

    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "publishableKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/android/exception/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lcom/stripe/android/Stripe$1;

    invoke-direct {v0, p0}, Lcom/stripe/android/Stripe$1;-><init>(Lcom/stripe/android/Stripe;)V

    iput-object v0, p0, Lcom/stripe/android/Stripe;->tokenCreator:Lcom/stripe/android/Stripe$TokenCreator;

    .line 79
    invoke-virtual {p0, p1}, Lcom/stripe/android/Stripe;->setDefaultPublishableKey(Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method static synthetic access$100(Lcom/stripe/android/Stripe;Lcom/stripe/android/Stripe$ResponseWrapper;Lcom/stripe/android/TokenCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/stripe/android/Stripe;
    .param p1, "x1"    # Lcom/stripe/android/Stripe$ResponseWrapper;
    .param p2, "x2"    # Lcom/stripe/android/TokenCallback;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/stripe/android/Stripe;->tokenTaskPostExecution(Lcom/stripe/android/Stripe$ResponseWrapper;Lcom/stripe/android/TokenCallback;)V

    return-void
.end method

.method static synthetic access$200(Lcom/stripe/android/Stripe;Ljava/util/concurrent/Executor;Landroid/os/AsyncTask;)V
    .locals 0
    .param p0, "x0"    # Lcom/stripe/android/Stripe;
    .param p1, "x1"    # Ljava/util/concurrent/Executor;
    .param p2, "x2"    # Landroid/os/AsyncTask;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/stripe/android/Stripe;->executeTokenTask(Ljava/util/concurrent/Executor;Landroid/os/AsyncTask;)V

    return-void
.end method

.method private executeTokenTask(Ljava/util/concurrent/Executor;Landroid/os/AsyncTask;)V
    .locals 3
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Lcom/stripe/android/Stripe$ResponseWrapper;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Lcom/stripe/android/Stripe$ResponseWrapper;>;"
    const/4 v2, 0x0

    .line 249
    if-eqz p1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-le v0, v1, :cond_0

    .line 250
    new-array v0, v2, [Ljava/lang/Void;

    invoke-virtual {p2, p1, v0}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 254
    :goto_0
    return-void

    .line 252
    :cond_0
    new-array v0, v2, [Ljava/lang/Void;

    invoke-virtual {p2, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private tokenTaskPostExecution(Lcom/stripe/android/Stripe$ResponseWrapper;Lcom/stripe/android/TokenCallback;)V
    .locals 2
    .param p1, "result"    # Lcom/stripe/android/Stripe$ResponseWrapper;
    .param p2, "callback"    # Lcom/stripe/android/TokenCallback;

    .prologue
    .line 236
    iget-object v0, p1, Lcom/stripe/android/Stripe$ResponseWrapper;->token:Lcom/stripe/android/model/Token;

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p1, Lcom/stripe/android/Stripe$ResponseWrapper;->token:Lcom/stripe/android/model/Token;

    invoke-interface {p2, v0}, Lcom/stripe/android/TokenCallback;->onSuccess(Lcom/stripe/android/model/Token;)V

    .line 246
    :goto_0
    return-void

    .line 239
    :cond_0
    iget-object v0, p1, Lcom/stripe/android/Stripe$ResponseWrapper;->error:Ljava/lang/Exception;

    if-eqz v0, :cond_1

    .line 240
    iget-object v0, p1, Lcom/stripe/android/Stripe$ResponseWrapper;->error:Ljava/lang/Exception;

    invoke-interface {p2, v0}, Lcom/stripe/android/TokenCallback;->onError(Ljava/lang/Exception;)V

    goto :goto_0

    .line 243
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Somehow got neither a token response or an error response"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v0}, Lcom/stripe/android/TokenCallback;->onError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private validateKey(Ljava/lang/String;)V
    .locals 4
    .param p1, "publishableKey"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation

        .annotation build Landroid/support/annotation/Size;
            min = 0x1L
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/android/exception/AuthenticationException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 221
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 222
    :cond_0
    new-instance v0, Lcom/stripe/android/exception/AuthenticationException;

    const-string/jumbo v1, "Invalid Publishable Key: You must use a valid publishable key to create a token.  For more info, see https://stripe.com/docs/stripe.js."

    .line 224
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v3, v2}, Lcom/stripe/android/exception/AuthenticationException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    throw v0

    .line 227
    :cond_1
    const-string/jumbo v0, "sk_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 228
    new-instance v0, Lcom/stripe/android/exception/AuthenticationException;

    const-string/jumbo v1, "Invalid Publishable Key: You are using a secret key to create a token, instead of the publishable one. For more info, see https://stripe.com/docs/stripe.js"

    .line 231
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v3, v2}, Lcom/stripe/android/exception/AuthenticationException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    throw v0

    .line 233
    :cond_2
    return-void
.end method


# virtual methods
.method public createToken(Lcom/stripe/android/model/Card;Lcom/stripe/android/TokenCallback;)V
    .locals 1
    .param p1, "card"    # Lcom/stripe/android/model/Card;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "callback"    # Lcom/stripe/android/TokenCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 91
    iget-object v0, p0, Lcom/stripe/android/Stripe;->defaultPublishableKey:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, p2}, Lcom/stripe/android/Stripe;->createToken(Lcom/stripe/android/model/Card;Ljava/lang/String;Lcom/stripe/android/TokenCallback;)V

    .line 92
    return-void
.end method

.method public createToken(Lcom/stripe/android/model/Card;Ljava/lang/String;Lcom/stripe/android/TokenCallback;)V
    .locals 1
    .param p1, "card"    # Lcom/stripe/android/model/Card;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "publishableKey"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "callback"    # Lcom/stripe/android/TokenCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 105
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/stripe/android/Stripe;->createToken(Lcom/stripe/android/model/Card;Ljava/lang/String;Ljava/util/concurrent/Executor;Lcom/stripe/android/TokenCallback;)V

    .line 106
    return-void
.end method

.method public createToken(Lcom/stripe/android/model/Card;Ljava/lang/String;Ljava/util/concurrent/Executor;Lcom/stripe/android/TokenCallback;)V
    .locals 3
    .param p1, "card"    # Lcom/stripe/android/model/Card;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "publishableKey"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation

        .annotation build Landroid/support/annotation/Size;
            min = 0x1L
        .end annotation
    .end param
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "callback"    # Lcom/stripe/android/TokenCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 137
    if-nez p1, :cond_0

    .line 138
    :try_start_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Required Parameter: \'card\' is required to create a token"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Lcom/stripe/android/exception/AuthenticationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :catch_0
    move-exception v0

    .line 153
    .local v0, "e":Lcom/stripe/android/exception/AuthenticationException;
    invoke-interface {p4, v0}, Lcom/stripe/android/TokenCallback;->onError(Ljava/lang/Exception;)V

    .line 155
    .end local v0    # "e":Lcom/stripe/android/exception/AuthenticationException;
    :goto_0
    return-void

    .line 142
    :cond_0
    if-nez p4, :cond_1

    .line 143
    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Required Parameter: \'callback\' is required to use the created token and handle errors"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 148
    :cond_1
    invoke-direct {p0, p2}, Lcom/stripe/android/Stripe;->validateKey(Ljava/lang/String;)V

    .line 150
    iget-object v1, p0, Lcom/stripe/android/Stripe;->tokenCreator:Lcom/stripe/android/Stripe$TokenCreator;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/stripe/android/Stripe$TokenCreator;->create(Lcom/stripe/android/model/Card;Ljava/lang/String;Ljava/util/concurrent/Executor;Lcom/stripe/android/TokenCallback;)V
    :try_end_1
    .catch Lcom/stripe/android/exception/AuthenticationException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public createToken(Lcom/stripe/android/model/Card;Ljava/util/concurrent/Executor;Lcom/stripe/android/TokenCallback;)V
    .locals 1
    .param p1, "card"    # Lcom/stripe/android/model/Card;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "callback"    # Lcom/stripe/android/TokenCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 119
    iget-object v0, p0, Lcom/stripe/android/Stripe;->defaultPublishableKey:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/stripe/android/Stripe;->createToken(Lcom/stripe/android/model/Card;Ljava/lang/String;Ljava/util/concurrent/Executor;Lcom/stripe/android/TokenCallback;)V

    .line 120
    return-void
.end method

.method public createTokenSynchronous(Lcom/stripe/android/model/Card;)Lcom/stripe/android/model/Token;
    .locals 1
    .param p1, "card"    # Lcom/stripe/android/model/Card;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/android/exception/AuthenticationException;,
            Lcom/stripe/android/exception/InvalidRequestException;,
            Lcom/stripe/android/exception/APIConnectionException;,
            Lcom/stripe/android/exception/CardException;,
            Lcom/stripe/android/exception/APIException;
        }
    .end annotation

    .prologue
    .line 177
    iget-object v0, p0, Lcom/stripe/android/Stripe;->defaultPublishableKey:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/stripe/android/Stripe;->createTokenSynchronous(Lcom/stripe/android/model/Card;Ljava/lang/String;)Lcom/stripe/android/model/Token;

    move-result-object v0

    return-object v0
.end method

.method public createTokenSynchronous(Lcom/stripe/android/model/Card;Ljava/lang/String;)Lcom/stripe/android/model/Token;
    .locals 2
    .param p1, "card"    # Lcom/stripe/android/model/Card;
    .param p2, "publishableKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/android/exception/AuthenticationException;,
            Lcom/stripe/android/exception/InvalidRequestException;,
            Lcom/stripe/android/exception/APIConnectionException;,
            Lcom/stripe/android/exception/CardException;,
            Lcom/stripe/android/exception/APIException;
        }
    .end annotation

    .prologue
    .line 201
    invoke-direct {p0, p2}, Lcom/stripe/android/Stripe;->validateKey(Ljava/lang/String;)V

    .line 203
    invoke-static {p2}, Lcom/stripe/android/net/RequestOptions;->builder(Ljava/lang/String;)Lcom/stripe/android/net/RequestOptions$RequestOptionsBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/stripe/android/net/RequestOptions$RequestOptionsBuilder;->build()Lcom/stripe/android/net/RequestOptions;

    move-result-object v0

    .line 204
    .local v0, "requestOptions":Lcom/stripe/android/net/RequestOptions;
    invoke-static {p1}, Lcom/stripe/android/util/StripeNetworkUtils;->hashMapFromCard(Lcom/stripe/android/model/Card;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/stripe/android/net/StripeApiHandler;->createToken(Ljava/util/Map;Lcom/stripe/android/net/RequestOptions;)Lcom/stripe/android/model/Token;

    move-result-object v1

    return-object v1
.end method

.method public setDefaultPublishableKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "publishableKey"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation

        .annotation build Landroid/support/annotation/Size;
            min = 0x1L
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/android/exception/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 215
    invoke-direct {p0, p1}, Lcom/stripe/android/Stripe;->validateKey(Ljava/lang/String;)V

    .line 216
    iput-object p1, p0, Lcom/stripe/android/Stripe;->defaultPublishableKey:Ljava/lang/String;

    .line 217
    return-void
.end method
