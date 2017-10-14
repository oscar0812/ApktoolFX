.class Lorg/telegram/ui/ChannelEditActivity$SearchAdapter$3;
.super Ljava/lang/Object;
.source "ChannelEditActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChannelEditActivity$SearchAdapter;->processSearch(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ChannelEditActivity$SearchAdapter;

.field final synthetic val$query:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChannelEditActivity$SearchAdapter;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/ChannelEditActivity$SearchAdapter;

    .prologue
    .line 615
    iput-object p1, p0, Lorg/telegram/ui/ChannelEditActivity$SearchAdapter$3;->this$1:Lorg/telegram/ui/ChannelEditActivity$SearchAdapter;

    iput-object p2, p0, Lorg/telegram/ui/ChannelEditActivity$SearchAdapter$3;->val$query:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 618
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity$SearchAdapter$3;->this$1:Lorg/telegram/ui/ChannelEditActivity$SearchAdapter;

    invoke-static {v0}, Lorg/telegram/ui/ChannelEditActivity$SearchAdapter;->access$2100(Lorg/telegram/ui/ChannelEditActivity$SearchAdapter;)Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity$SearchAdapter$3;->val$query:Ljava/lang/String;

    iget-object v3, p0, Lorg/telegram/ui/ChannelEditActivity$SearchAdapter$3;->this$1:Lorg/telegram/ui/ChannelEditActivity$SearchAdapter;

    iget-object v3, v3, Lorg/telegram/ui/ChannelEditActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChannelEditActivity;->access$100(Lorg/telegram/ui/ChannelEditActivity;)I

    move-result v6

    move v3, v2

    move v5, v4

    move v7, v2

    invoke-virtual/range {v0 .. v7}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->queryServerSearch(Ljava/lang/String;ZZZZIZ)V

    .line 619
    return-void
.end method
