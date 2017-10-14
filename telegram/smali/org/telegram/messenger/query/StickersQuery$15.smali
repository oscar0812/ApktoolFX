.class final Lorg/telegram/messenger/query/StickersQuery$15;
.super Ljava/lang/Object;
.source "StickersQuery.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/query/StickersQuery;->loadFeaturesStickers(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$req:Lorg/telegram/tgnet/TLRPC$TL_messages_getFeaturedStickers;


# direct methods
.method constructor <init>(Lorg/telegram/tgnet/TLRPC$TL_messages_getFeaturedStickers;)V
    .locals 0

    .prologue
    .line 790
    iput-object p1, p0, Lorg/telegram/messenger/query/StickersQuery$15;->val$req:Lorg/telegram/tgnet/TLRPC$TL_messages_getFeaturedStickers;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1
    .param p1, "response"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "error"    # Lorg/telegram/tgnet/TLRPC$TL_error;

    .prologue
    .line 793
    new-instance v0, Lorg/telegram/messenger/query/StickersQuery$15$1;

    invoke-direct {v0, p0, p1}, Lorg/telegram/messenger/query/StickersQuery$15$1;-><init>(Lorg/telegram/messenger/query/StickersQuery$15;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 804
    return-void
.end method
