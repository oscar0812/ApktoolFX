.class Lorg/telegram/messenger/LocaleController$4;
.super Ljava/lang/Object;
.source "LocaleController.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/LocaleController;->applyRemoteLanguage(Lorg/telegram/messenger/LocaleController$LocaleInfo;Lorg/telegram/tgnet/TLRPC$TL_langPackLanguage;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/LocaleController;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/LocaleController;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/LocaleController;

    .prologue
    .line 1509
    iput-object p1, p0, Lorg/telegram/messenger/LocaleController$4;->this$0:Lorg/telegram/messenger/LocaleController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1
    .param p1, "response"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "error"    # Lorg/telegram/tgnet/TLRPC$TL_error;

    .prologue
    .line 1512
    if-eqz p1, :cond_0

    .line 1513
    new-instance v0, Lorg/telegram/messenger/LocaleController$4$1;

    invoke-direct {v0, p0, p1}, Lorg/telegram/messenger/LocaleController$4$1;-><init>(Lorg/telegram/messenger/LocaleController$4;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1520
    :cond_0
    return-void
.end method
