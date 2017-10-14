.class Lorg/telegram/ui/Adapters/MentionsAdapter$8;
.super Ljava/lang/Object;
.source "MentionsAdapter.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Adapters/MentionsAdapter;->searchForContextBotResults(ZLorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

.field final synthetic val$cache:Z

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$offset:Ljava/lang/String;

.field final synthetic val$query:Ljava/lang/String;

.field final synthetic val$user:Lorg/telegram/tgnet/TLRPC$User;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Adapters/MentionsAdapter;Ljava/lang/String;ZLorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/Adapters/MentionsAdapter;

    .prologue
    .line 486
    iput-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    iput-object p2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->val$query:Ljava/lang/String;

    iput-boolean p3, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->val$cache:Z

    iput-object p4, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->val$user:Lorg/telegram/tgnet/TLRPC$User;

    iput-object p5, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->val$offset:Ljava/lang/String;

    iput-object p6, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->val$key:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1
    .param p1, "response"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "error"    # Lorg/telegram/tgnet/TLRPC$TL_error;

    .prologue
    .line 489
    new-instance v0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;-><init>(Lorg/telegram/ui/Adapters/MentionsAdapter$8;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 550
    return-void
.end method
