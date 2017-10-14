.class final Lorg/telegram/messenger/query/SearchQuery$3;
.super Ljava/lang/Object;
.source "SearchQuery.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/query/SearchQuery;->loadHints(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 327
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1
    .param p1, "response"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "error"    # Lorg/telegram/tgnet/TLRPC$TL_error;

    .prologue
    .line 330
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_contacts_topPeers;

    if-eqz v0, :cond_0

    .line 331
    new-instance v0, Lorg/telegram/messenger/query/SearchQuery$3$1;

    invoke-direct {v0, p0, p1}, Lorg/telegram/messenger/query/SearchQuery$3$1;-><init>(Lorg/telegram/messenger/query/SearchQuery$3;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 405
    :cond_0
    return-void
.end method
