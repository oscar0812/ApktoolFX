.class Lorg/telegram/ui/ArchivedStickersActivity$4;
.super Ljava/lang/Object;
.source "ArchivedStickersActivity.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ArchivedStickersActivity;->getStickers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ArchivedStickersActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ArchivedStickersActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/ArchivedStickersActivity;

    .prologue
    .line 210
    iput-object p1, p0, Lorg/telegram/ui/ArchivedStickersActivity$4;->this$0:Lorg/telegram/ui/ArchivedStickersActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1
    .param p1, "response"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "error"    # Lorg/telegram/tgnet/TLRPC$TL_error;

    .prologue
    .line 213
    new-instance v0, Lorg/telegram/ui/ArchivedStickersActivity$4$1;

    invoke-direct {v0, p0, p2, p1}, Lorg/telegram/ui/ArchivedStickersActivity$4$1;-><init>(Lorg/telegram/ui/ArchivedStickersActivity$4;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 229
    return-void
.end method
