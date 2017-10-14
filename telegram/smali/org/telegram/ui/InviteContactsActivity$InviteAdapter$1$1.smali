.class Lorg/telegram/ui/InviteContactsActivity$InviteAdapter$1$1;
.super Ljava/lang/Object;
.source "InviteContactsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/InviteContactsActivity$InviteAdapter$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/InviteContactsActivity$InviteAdapter$1;


# direct methods
.method constructor <init>(Lorg/telegram/ui/InviteContactsActivity$InviteAdapter$1;)V
    .locals 0
    .param p1, "this$2"    # Lorg/telegram/ui/InviteContactsActivity$InviteAdapter$1;

    .prologue
    .line 822
    iput-object p1, p0, Lorg/telegram/ui/InviteContactsActivity$InviteAdapter$1$1;->this$2:Lorg/telegram/ui/InviteContactsActivity$InviteAdapter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 825
    sget-object v0, Lorg/telegram/messenger/Utilities;->searchQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/ui/InviteContactsActivity$InviteAdapter$1$1$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/InviteContactsActivity$InviteAdapter$1$1$1;-><init>(Lorg/telegram/ui/InviteContactsActivity$InviteAdapter$1$1;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 871
    return-void
.end method
