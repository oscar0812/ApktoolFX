.class Lorg/telegram/ui/NewContactActivity$1$1;
.super Ljava/lang/Object;
.source "NewContactActivity.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/NewContactActivity$1;->onItemClick(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/NewContactActivity$1;

.field final synthetic val$inputPhoneContact:Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;

.field final synthetic val$req:Lorg/telegram/tgnet/TLRPC$TL_contacts_importContacts;


# direct methods
.method constructor <init>(Lorg/telegram/ui/NewContactActivity$1;Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;Lorg/telegram/tgnet/TLRPC$TL_contacts_importContacts;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/NewContactActivity$1;

    .prologue
    .line 151
    iput-object p1, p0, Lorg/telegram/ui/NewContactActivity$1$1;->this$1:Lorg/telegram/ui/NewContactActivity$1;

    iput-object p2, p0, Lorg/telegram/ui/NewContactActivity$1$1;->val$inputPhoneContact:Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;

    iput-object p3, p0, Lorg/telegram/ui/NewContactActivity$1$1;->val$req:Lorg/telegram/tgnet/TLRPC$TL_contacts_importContacts;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 2
    .param p1, "response"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "error"    # Lorg/telegram/tgnet/TLRPC$TL_error;

    .prologue
    .line 154
    move-object v0, p1

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_importedContacts;

    .line 155
    .local v0, "res":Lorg/telegram/tgnet/TLRPC$TL_contacts_importedContacts;
    new-instance v1, Lorg/telegram/ui/NewContactActivity$1$1$1;

    invoke-direct {v1, p0, v0, p2}, Lorg/telegram/ui/NewContactActivity$1$1$1;-><init>(Lorg/telegram/ui/NewContactActivity$1$1;Lorg/telegram/tgnet/TLRPC$TL_contacts_importedContacts;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 192
    return-void
.end method
