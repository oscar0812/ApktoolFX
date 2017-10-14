.class Lorg/telegram/ui/IntroActivity$6;
.super Ljava/lang/Object;
.source "IntroActivity.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/IntroActivity;->checkContinueText()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/IntroActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/IntroActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/IntroActivity;

    .prologue
    .line 412
    iput-object p1, p0, Lorg/telegram/ui/IntroActivity$6;->this$0:Lorg/telegram/ui/IntroActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 4
    .param p1, "response"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "error"    # Lorg/telegram/tgnet/TLRPC$TL_error;

    .prologue
    .line 415
    if-eqz p1, :cond_0

    move-object v1, p1

    .line 416
    check-cast v1, Lorg/telegram/tgnet/TLRPC$Vector;

    .line 417
    .local v1, "vector":Lorg/telegram/tgnet/TLRPC$Vector;
    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$Vector;->objects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 434
    .end local v1    # "vector":Lorg/telegram/tgnet/TLRPC$Vector;
    :cond_0
    :goto_0
    return-void

    .line 420
    .restart local v1    # "vector":Lorg/telegram/tgnet/TLRPC$Vector;
    :cond_1
    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$Vector;->objects:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$LangPackString;

    .line 421
    .local v0, "string":Lorg/telegram/tgnet/TLRPC$LangPackString;
    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_langPackString;

    if-eqz v2, :cond_0

    .line 422
    new-instance v2, Lorg/telegram/ui/IntroActivity$6$1;

    invoke-direct {v2, p0, v0}, Lorg/telegram/ui/IntroActivity$6$1;-><init>(Lorg/telegram/ui/IntroActivity$6;Lorg/telegram/tgnet/TLRPC$LangPackString;)V

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
