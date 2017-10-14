.class Lcom/stripe/android/Stripe$1;
.super Ljava/lang/Object;
.source "Stripe.java"

# interfaces
.implements Lcom/stripe/android/Stripe$TokenCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/android/Stripe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stripe/android/Stripe;


# direct methods
.method constructor <init>(Lcom/stripe/android/Stripe;)V
    .locals 0
    .param p1, "this$0"    # Lcom/stripe/android/Stripe;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/stripe/android/Stripe$1;->this$0:Lcom/stripe/android/Stripe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/stripe/android/model/Card;Ljava/lang/String;Ljava/util/concurrent/Executor;Lcom/stripe/android/TokenCallback;)V
    .locals 2
    .param p1, "card"    # Lcom/stripe/android/model/Card;
    .param p2, "publishableKey"    # Ljava/lang/String;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "callback"    # Lcom/stripe/android/TokenCallback;

    .prologue
    .line 39
    new-instance v0, Lcom/stripe/android/Stripe$1$1;

    invoke-direct {v0, p0, p2, p1, p4}, Lcom/stripe/android/Stripe$1$1;-><init>(Lcom/stripe/android/Stripe$1;Ljava/lang/String;Lcom/stripe/android/model/Card;Lcom/stripe/android/TokenCallback;)V

    .line 61
    .local v0, "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Lcom/stripe/android/Stripe$ResponseWrapper;>;"
    iget-object v1, p0, Lcom/stripe/android/Stripe$1;->this$0:Lcom/stripe/android/Stripe;

    invoke-static {v1, p3, v0}, Lcom/stripe/android/Stripe;->access$200(Lcom/stripe/android/Stripe;Ljava/util/concurrent/Executor;Landroid/os/AsyncTask;)V

    .line 62
    return-void
.end method
