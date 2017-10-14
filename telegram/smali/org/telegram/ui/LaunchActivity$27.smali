.class Lorg/telegram/ui/LaunchActivity$27;
.super Ljava/lang/Object;
.source "LaunchActivity.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LaunchActivity;->showLanguageAlert(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/LaunchActivity;

.field final synthetic val$infos:[Lorg/telegram/messenger/LocaleController$LocaleInfo;

.field final synthetic val$systemLang:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LaunchActivity;[Lorg/telegram/messenger/LocaleController$LocaleInfo;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/LaunchActivity;

    .prologue
    .line 2383
    iput-object p1, p0, Lorg/telegram/ui/LaunchActivity$27;->this$0:Lorg/telegram/ui/LaunchActivity;

    iput-object p2, p0, Lorg/telegram/ui/LaunchActivity$27;->val$infos:[Lorg/telegram/messenger/LocaleController$LocaleInfo;

    iput-object p3, p0, Lorg/telegram/ui/LaunchActivity$27;->val$systemLang:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 6
    .param p1, "response"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "error"    # Lorg/telegram/tgnet/TLRPC$TL_error;

    .prologue
    .line 2386
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2387
    .local v1, "keys":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    move-object v3, p1

    .line 2388
    check-cast v3, Lorg/telegram/tgnet/TLRPC$Vector;

    .line 2389
    .local v3, "vector":Lorg/telegram/tgnet/TLRPC$Vector;
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$Vector;->objects:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 2390
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$Vector;->objects:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$LangPackString;

    .line 2391
    .local v2, "string":Lorg/telegram/tgnet/TLRPC$LangPackString;
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$LangPackString;->key:Ljava/lang/String;

    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$LangPackString;->value:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2389
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2394
    .end local v0    # "a":I
    .end local v2    # "string":Lorg/telegram/tgnet/TLRPC$LangPackString;
    .end local v3    # "vector":Lorg/telegram/tgnet/TLRPC$Vector;
    :cond_0
    new-instance v4, Lorg/telegram/ui/LaunchActivity$27$1;

    invoke-direct {v4, p0, v1}, Lorg/telegram/ui/LaunchActivity$27$1;-><init>(Lorg/telegram/ui/LaunchActivity$27;Ljava/util/HashMap;)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 2403
    return-void
.end method
