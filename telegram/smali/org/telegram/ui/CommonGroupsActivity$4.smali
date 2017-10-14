.class Lorg/telegram/ui/CommonGroupsActivity$4;
.super Ljava/lang/Object;
.source "CommonGroupsActivity.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/CommonGroupsActivity;->getChats(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/CommonGroupsActivity;

.field final synthetic val$count:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/CommonGroupsActivity;I)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/CommonGroupsActivity;

    .prologue
    .line 152
    iput-object p1, p0, Lorg/telegram/ui/CommonGroupsActivity$4;->this$0:Lorg/telegram/ui/CommonGroupsActivity;

    iput p2, p0, Lorg/telegram/ui/CommonGroupsActivity$4;->val$count:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1
    .param p1, "response"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "error"    # Lorg/telegram/tgnet/TLRPC$TL_error;

    .prologue
    .line 155
    new-instance v0, Lorg/telegram/ui/CommonGroupsActivity$4$1;

    invoke-direct {v0, p0, p2, p1}, Lorg/telegram/ui/CommonGroupsActivity$4$1;-><init>(Lorg/telegram/ui/CommonGroupsActivity$4;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 176
    return-void
.end method
