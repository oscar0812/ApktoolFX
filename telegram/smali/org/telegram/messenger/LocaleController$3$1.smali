.class Lorg/telegram/messenger/LocaleController$3$1;
.super Ljava/lang/Object;
.source "LocaleController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/LocaleController$3;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/LocaleController$3;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/LocaleController$3;Lorg/telegram/tgnet/TLObject;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/messenger/LocaleController$3;

    .prologue
    .line 1491
    iput-object p1, p0, Lorg/telegram/messenger/LocaleController$3$1;->this$1:Lorg/telegram/messenger/LocaleController$3;

    iput-object p2, p0, Lorg/telegram/messenger/LocaleController$3$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1494
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController$3$1;->this$1:Lorg/telegram/messenger/LocaleController$3;

    iget-object v1, v0, Lorg/telegram/messenger/LocaleController$3;->this$0:Lorg/telegram/messenger/LocaleController;

    iget-object v0, p0, Lorg/telegram/messenger/LocaleController$3$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_langPackDifference;

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/LocaleController;->saveRemoteLocaleStrings(Lorg/telegram/tgnet/TLRPC$TL_langPackDifference;)V

    .line 1495
    return-void
.end method
