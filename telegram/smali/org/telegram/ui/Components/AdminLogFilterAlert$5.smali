.class Lorg/telegram/ui/Components/AdminLogFilterAlert$5;
.super Ljava/lang/Object;
.source "AdminLogFilterAlert.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/AdminLogFilterAlert;-><init>(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;Ljava/util/HashMap;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/AdminLogFilterAlert;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/Components/AdminLogFilterAlert;

    .prologue
    .line 334
    iput-object p1, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert$5;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 337
    iget-object v0, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert$5;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$2200(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Lorg/telegram/ui/Components/AdminLogFilterAlert$AdminLogFilterAlertDelegate;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert$5;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1000(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert$5;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1200(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Ljava/util/HashMap;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/telegram/ui/Components/AdminLogFilterAlert$AdminLogFilterAlertDelegate;->didSelectRights(Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;Ljava/util/HashMap;)V

    .line 338
    iget-object v0, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert$5;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->dismiss()V

    .line 339
    return-void
.end method
