.class Lorg/telegram/messenger/MessagesController$24;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController;->loadDialogPhotos(IIJZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesController;

.field final synthetic val$classGuid:I

.field final synthetic val$count:I

.field final synthetic val$did:I

.field final synthetic val$max_id:J


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController;IIJI)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 1694
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$24;->this$0:Lorg/telegram/messenger/MessagesController;

    iput p2, p0, Lorg/telegram/messenger/MessagesController$24;->val$did:I

    iput p3, p0, Lorg/telegram/messenger/MessagesController$24;->val$count:I

    iput-wide p4, p0, Lorg/telegram/messenger/MessagesController$24;->val$max_id:J

    iput p6, p0, Lorg/telegram/messenger/MessagesController$24;->val$classGuid:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 8
    .param p1, "response"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "error"    # Lorg/telegram/tgnet/TLRPC$TL_error;

    .prologue
    .line 1697
    if-nez p2, :cond_0

    move-object v1, p1

    .line 1698
    check-cast v1, Lorg/telegram/tgnet/TLRPC$photos_Photos;

    .line 1699
    .local v1, "res":Lorg/telegram/tgnet/TLRPC$photos_Photos;
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$24;->this$0:Lorg/telegram/messenger/MessagesController;

    iget v2, p0, Lorg/telegram/messenger/MessagesController$24;->val$did:I

    iget v3, p0, Lorg/telegram/messenger/MessagesController$24;->val$count:I

    iget-wide v4, p0, Lorg/telegram/messenger/MessagesController$24;->val$max_id:J

    const/4 v6, 0x0

    iget v7, p0, Lorg/telegram/messenger/MessagesController$24;->val$classGuid:I

    invoke-virtual/range {v0 .. v7}, Lorg/telegram/messenger/MessagesController;->processLoadedUserPhotos(Lorg/telegram/tgnet/TLRPC$photos_Photos;IIJZI)V

    .line 1701
    .end local v1    # "res":Lorg/telegram/tgnet/TLRPC$photos_Photos;
    :cond_0
    return-void
.end method
