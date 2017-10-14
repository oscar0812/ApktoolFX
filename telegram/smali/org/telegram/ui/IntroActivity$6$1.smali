.class Lorg/telegram/ui/IntroActivity$6$1;
.super Ljava/lang/Object;
.source "IntroActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/IntroActivity$6;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/IntroActivity$6;

.field final synthetic val$string:Lorg/telegram/tgnet/TLRPC$LangPackString;


# direct methods
.method constructor <init>(Lorg/telegram/ui/IntroActivity$6;Lorg/telegram/tgnet/TLRPC$LangPackString;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/IntroActivity$6;

    .prologue
    .line 422
    iput-object p1, p0, Lorg/telegram/ui/IntroActivity$6$1;->this$1:Lorg/telegram/ui/IntroActivity$6;

    iput-object p2, p0, Lorg/telegram/ui/IntroActivity$6$1;->val$string:Lorg/telegram/tgnet/TLRPC$LangPackString;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 425
    iget-object v1, p0, Lorg/telegram/ui/IntroActivity$6$1;->this$1:Lorg/telegram/ui/IntroActivity$6;

    iget-object v1, v1, Lorg/telegram/ui/IntroActivity$6;->this$0:Lorg/telegram/ui/IntroActivity;

    invoke-static {v1}, Lorg/telegram/ui/IntroActivity;->access$1100(Lorg/telegram/ui/IntroActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 426
    iget-object v1, p0, Lorg/telegram/ui/IntroActivity$6$1;->this$1:Lorg/telegram/ui/IntroActivity$6;

    iget-object v1, v1, Lorg/telegram/ui/IntroActivity$6;->this$0:Lorg/telegram/ui/IntroActivity;

    invoke-static {v1}, Lorg/telegram/ui/IntroActivity;->access$1300(Lorg/telegram/ui/IntroActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/IntroActivity$6$1;->val$string:Lorg/telegram/tgnet/TLRPC$LangPackString;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$LangPackString;->value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 427
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v2, "mainconfig"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 428
    .local v0, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "language_showed2"

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getSystemLocaleStringIso639()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 430
    .end local v0    # "preferences":Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method
