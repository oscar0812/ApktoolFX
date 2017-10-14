.class interface abstract Lorg/telegram/ui/PaymentFormActivity$PaymentFormActivityDelegate;
.super Ljava/lang/Object;
.source "PaymentFormActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/PaymentFormActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "PaymentFormActivityDelegate"
.end annotation


# virtual methods
.method public abstract currentPasswordUpdated(Lorg/telegram/tgnet/TLRPC$account_Password;)V
.end method

.method public abstract didSelectNewCard(Ljava/lang/String;Ljava/lang/String;ZLorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentialsAndroidPay;)Z
.end method

.method public abstract onFragmentDestroyed()V
.end method
