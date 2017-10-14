.class Lorg/telegram/ui/DataUsageActivity$2$1;
.super Ljava/lang/Object;
.source "DataUsageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DataUsageActivity$2;->onItemClick(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/DataUsageActivity$2;


# direct methods
.method constructor <init>(Lorg/telegram/ui/DataUsageActivity$2;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/DataUsageActivity$2;

    .prologue
    .line 217
    iput-object p1, p0, Lorg/telegram/ui/DataUsageActivity$2$1;->this$1:Lorg/telegram/ui/DataUsageActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 220
    invoke-static {}, Lorg/telegram/messenger/StatsController;->getInstance()Lorg/telegram/messenger/StatsController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/DataUsageActivity$2$1;->this$1:Lorg/telegram/ui/DataUsageActivity$2;

    iget-object v1, v1, Lorg/telegram/ui/DataUsageActivity$2;->this$0:Lorg/telegram/ui/DataUsageActivity;

    invoke-static {v1}, Lorg/telegram/ui/DataUsageActivity;->access$100(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/StatsController;->resetStats(I)V

    .line 221
    iget-object v0, p0, Lorg/telegram/ui/DataUsageActivity$2$1;->this$1:Lorg/telegram/ui/DataUsageActivity$2;

    iget-object v0, v0, Lorg/telegram/ui/DataUsageActivity$2;->this$0:Lorg/telegram/ui/DataUsageActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataUsageActivity;->access$200(Lorg/telegram/ui/DataUsageActivity;)Lorg/telegram/ui/DataUsageActivity$ListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->notifyDataSetChanged()V

    .line 222
    return-void
.end method
