.class public Lorg/telegram/tgnet/TLClassStore;
.super Ljava/lang/Object;
.source "TLClassStore.java"


# static fields
.field static store:Lorg/telegram/tgnet/TLClassStore;


# instance fields
.field private classStore:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    sput-object v0, Lorg/telegram/tgnet/TLClassStore;->store:Lorg/telegram/tgnet/TLClassStore;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLClassStore;->classStore:Ljava/util/HashMap;

    .line 21
    iget-object v0, p0, Lorg/telegram/tgnet/TLClassStore;->classStore:Ljava/util/HashMap;

    sget v1, Lorg/telegram/tgnet/TLRPC$TL_error;->constructor:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lorg/telegram/tgnet/TLRPC$TL_error;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    iget-object v0, p0, Lorg/telegram/tgnet/TLClassStore;->classStore:Ljava/util/HashMap;

    sget v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->constructor:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    iget-object v0, p0, Lorg/telegram/tgnet/TLClassStore;->classStore:Ljava/util/HashMap;

    sget v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->constructor:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    iget-object v0, p0, Lorg/telegram/tgnet/TLClassStore;->classStore:Ljava/util/HashMap;

    sget v1, Lorg/telegram/tgnet/TLRPC$TL_config;->constructor:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lorg/telegram/tgnet/TLRPC$TL_config;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    iget-object v0, p0, Lorg/telegram/tgnet/TLClassStore;->classStore:Ljava/util/HashMap;

    sget v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageLayer;->constructor:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageLayer;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    iget-object v0, p0, Lorg/telegram/tgnet/TLClassStore;->classStore:Ljava/util/HashMap;

    sget v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage_layer17;->constructor:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    iget-object v0, p0, Lorg/telegram/tgnet/TLClassStore;->classStore:Ljava/util/HashMap;

    sget v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService_layer8;->constructor:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService_layer8;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    iget-object v0, p0, Lorg/telegram/tgnet/TLClassStore;->classStore:Ljava/util/HashMap;

    sget v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage_layer8;->constructor:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage_layer8;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    iget-object v0, p0, Lorg/telegram/tgnet/TLClassStore;->classStore:Ljava/util/HashMap;

    sget v1, Lorg/telegram/tgnet/TLRPC$TL_message_secret;->constructor:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lorg/telegram/tgnet/TLRPC$TL_message_secret;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    iget-object v0, p0, Lorg/telegram/tgnet/TLClassStore;->classStore:Ljava/util/HashMap;

    sget v1, Lorg/telegram/tgnet/TLRPC$TL_message_secret_old;->constructor:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lorg/telegram/tgnet/TLRPC$TL_message_secret_old;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    iget-object v0, p0, Lorg/telegram/tgnet/TLClassStore;->classStore:Ljava/util/HashMap;

    sget v1, Lorg/telegram/tgnet/TLRPC$TL_messageEncryptedAction;->constructor:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lorg/telegram/tgnet/TLRPC$TL_messageEncryptedAction;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    iget-object v0, p0, Lorg/telegram/tgnet/TLClassStore;->classStore:Ljava/util/HashMap;

    sget v1, Lorg/telegram/tgnet/TLRPC$TL_null;->constructor:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lorg/telegram/tgnet/TLRPC$TL_null;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    iget-object v0, p0, Lorg/telegram/tgnet/TLClassStore;->classStore:Ljava/util/HashMap;

    sget v1, Lorg/telegram/tgnet/TLRPC$TL_updateShortChatMessage;->constructor:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lorg/telegram/tgnet/TLRPC$TL_updateShortChatMessage;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    iget-object v0, p0, Lorg/telegram/tgnet/TLClassStore;->classStore:Ljava/util/HashMap;

    sget v1, Lorg/telegram/tgnet/TLRPC$TL_updates;->constructor:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lorg/telegram/tgnet/TLRPC$TL_updates;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    iget-object v0, p0, Lorg/telegram/tgnet/TLClassStore;->classStore:Ljava/util/HashMap;

    sget v1, Lorg/telegram/tgnet/TLRPC$TL_updateShortMessage;->constructor:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lorg/telegram/tgnet/TLRPC$TL_updateShortMessage;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    iget-object v0, p0, Lorg/telegram/tgnet/TLClassStore;->classStore:Ljava/util/HashMap;

    sget v1, Lorg/telegram/tgnet/TLRPC$TL_updateShort;->constructor:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lorg/telegram/tgnet/TLRPC$TL_updateShort;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    iget-object v0, p0, Lorg/telegram/tgnet/TLClassStore;->classStore:Ljava/util/HashMap;

    sget v1, Lorg/telegram/tgnet/TLRPC$TL_updatesCombined;->constructor:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lorg/telegram/tgnet/TLRPC$TL_updatesCombined;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    iget-object v0, p0, Lorg/telegram/tgnet/TLClassStore;->classStore:Ljava/util/HashMap;

    sget v1, Lorg/telegram/tgnet/TLRPC$TL_updateShortSentMessage;->constructor:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lorg/telegram/tgnet/TLRPC$TL_updateShortSentMessage;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    iget-object v0, p0, Lorg/telegram/tgnet/TLClassStore;->classStore:Ljava/util/HashMap;

    sget v1, Lorg/telegram/tgnet/TLRPC$TL_updatesTooLong;->constructor:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lorg/telegram/tgnet/TLRPC$TL_updatesTooLong;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    return-void
.end method

.method public static Instance()Lorg/telegram/tgnet/TLClassStore;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lorg/telegram/tgnet/TLClassStore;->store:Lorg/telegram/tgnet/TLClassStore;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lorg/telegram/tgnet/TLClassStore;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLClassStore;-><init>()V

    sput-object v0, Lorg/telegram/tgnet/TLClassStore;->store:Lorg/telegram/tgnet/TLClassStore;

    .line 49
    :cond_0
    sget-object v0, Lorg/telegram/tgnet/TLClassStore;->store:Lorg/telegram/tgnet/TLClassStore;

    return-object v0
.end method


# virtual methods
.method public TLdeserialize(Lorg/telegram/tgnet/NativeByteBuffer;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 6
    .param p1, "stream"    # Lorg/telegram/tgnet/NativeByteBuffer;
    .param p2, "constructor"    # I
    .param p3, "exception"    # Z

    .prologue
    const/4 v3, 0x0

    .line 53
    iget-object v4, p0, Lorg/telegram/tgnet/TLClassStore;->classStore:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 54
    .local v1, "objClass":Ljava/lang/Class;
    if-eqz v1, :cond_0

    .line 57
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLObject;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .local v2, "response":Lorg/telegram/tgnet/TLObject;
    invoke-virtual {v2, p1, p3}, Lorg/telegram/tgnet/TLObject;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 65
    .end local v2    # "response":Lorg/telegram/tgnet/TLObject;
    :goto_0
    return-object v2

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    move-object v2, v3

    .line 60
    goto :goto_0

    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_0
    move-object v2, v3

    .line 65
    goto :goto_0
.end method
