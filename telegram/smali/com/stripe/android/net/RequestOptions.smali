.class public Lcom/stripe/android/net/RequestOptions;
.super Ljava/lang/Object;
.source "RequestOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/android/net/RequestOptions$RequestOptionsBuilder;
    }
.end annotation


# instance fields
.field private final mApiVersion:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mIdempotencyKey:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mPublishableApiKey:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "apiVersion"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "idempotencyKey"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "publishableApiKey"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/stripe/android/net/RequestOptions;->mApiVersion:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcom/stripe/android/net/RequestOptions;->mIdempotencyKey:Ljava/lang/String;

    .line 23
    iput-object p3, p0, Lcom/stripe/android/net/RequestOptions;->mPublishableApiKey:Ljava/lang/String;

    .line 24
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/android/net/RequestOptions$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Lcom/stripe/android/net/RequestOptions$1;

    .prologue
    .line 11
    invoke-direct {p0, p1, p2, p3}, Lcom/stripe/android/net/RequestOptions;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static builder(Ljava/lang/String;)Lcom/stripe/android/net/RequestOptions$RequestOptionsBuilder;
    .locals 1
    .param p0, "publishableApiKey"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 57
    new-instance v0, Lcom/stripe/android/net/RequestOptions$RequestOptionsBuilder;

    invoke-direct {v0, p0}, Lcom/stripe/android/net/RequestOptions$RequestOptionsBuilder;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getApiVersion()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 31
    iget-object v0, p0, Lcom/stripe/android/net/RequestOptions;->mApiVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getIdempotencyKey()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lcom/stripe/android/net/RequestOptions;->mIdempotencyKey:Ljava/lang/String;

    return-object v0
.end method

.method public getPublishableApiKey()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lcom/stripe/android/net/RequestOptions;->mPublishableApiKey:Ljava/lang/String;

    return-object v0
.end method
