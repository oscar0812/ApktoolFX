.class Lorg/telegram/ui/PaymentFormActivity$TelegramWebviewProxy$1;
.super Ljava/lang/Object;
.source "PaymentFormActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PaymentFormActivity$TelegramWebviewProxy;->postEvent(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/PaymentFormActivity$TelegramWebviewProxy;

.field final synthetic val$eventData:Ljava/lang/String;

.field final synthetic val$eventName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PaymentFormActivity$TelegramWebviewProxy;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/PaymentFormActivity$TelegramWebviewProxy;

    .prologue
    .line 267
    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity$TelegramWebviewProxy$1;->this$1:Lorg/telegram/ui/PaymentFormActivity$TelegramWebviewProxy;

    iput-object p2, p0, Lorg/telegram/ui/PaymentFormActivity$TelegramWebviewProxy$1;->val$eventName:Ljava/lang/String;

    iput-object p3, p0, Lorg/telegram/ui/PaymentFormActivity$TelegramWebviewProxy$1;->val$eventData:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 270
    iget-object v3, p0, Lorg/telegram/ui/PaymentFormActivity$TelegramWebviewProxy$1;->this$1:Lorg/telegram/ui/PaymentFormActivity$TelegramWebviewProxy;

    iget-object v3, v3, Lorg/telegram/ui/PaymentFormActivity$TelegramWebviewProxy;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/PaymentFormActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-nez v3, :cond_1

    .line 285
    :cond_0
    :goto_0
    return-void

    .line 273
    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/PaymentFormActivity$TelegramWebviewProxy$1;->val$eventName:Ljava/lang/String;

    const-string/jumbo v4, "payment_form_submit"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 275
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    iget-object v3, p0, Lorg/telegram/ui/PaymentFormActivity$TelegramWebviewProxy$1;->val$eventData:Ljava/lang/String;

    invoke-direct {v1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 276
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v3, "credentials"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 277
    .local v2, "response":Lorg/json/JSONObject;
    iget-object v3, p0, Lorg/telegram/ui/PaymentFormActivity$TelegramWebviewProxy$1;->this$1:Lorg/telegram/ui/PaymentFormActivity$TelegramWebviewProxy;

    iget-object v3, v3, Lorg/telegram/ui/PaymentFormActivity$TelegramWebviewProxy;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/telegram/ui/PaymentFormActivity;->access$002(Lorg/telegram/ui/PaymentFormActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 278
    iget-object v3, p0, Lorg/telegram/ui/PaymentFormActivity$TelegramWebviewProxy$1;->this$1:Lorg/telegram/ui/PaymentFormActivity$TelegramWebviewProxy;

    iget-object v3, v3, Lorg/telegram/ui/PaymentFormActivity$TelegramWebviewProxy;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    const-string/jumbo v4, "title"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/telegram/ui/PaymentFormActivity;->access$102(Lorg/telegram/ui/PaymentFormActivity;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .end local v2    # "response":Lorg/json/JSONObject;
    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/PaymentFormActivity$TelegramWebviewProxy$1;->this$1:Lorg/telegram/ui/PaymentFormActivity$TelegramWebviewProxy;

    iget-object v3, v3, Lorg/telegram/ui/PaymentFormActivity$TelegramWebviewProxy;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {v3}, Lorg/telegram/ui/PaymentFormActivity;->access$200(Lorg/telegram/ui/PaymentFormActivity;)V

    goto :goto_0

    .line 279
    :catch_0
    move-exception v0

    .line 280
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v3, p0, Lorg/telegram/ui/PaymentFormActivity$TelegramWebviewProxy$1;->this$1:Lorg/telegram/ui/PaymentFormActivity$TelegramWebviewProxy;

    iget-object v3, v3, Lorg/telegram/ui/PaymentFormActivity$TelegramWebviewProxy;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    iget-object v4, p0, Lorg/telegram/ui/PaymentFormActivity$TelegramWebviewProxy$1;->val$eventData:Ljava/lang/String;

    invoke-static {v3, v4}, Lorg/telegram/ui/PaymentFormActivity;->access$002(Lorg/telegram/ui/PaymentFormActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 281
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1
.end method
