.class Lorg/telegram/ui/Components/AudioPlayerAlert$6;
.super Ljava/lang/Object;
.source "AudioPlayerAlert.java"

# interfaces
.implements Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/AudioPlayerAlert;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/AudioPlayerAlert;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/Components/AudioPlayerAlert;

    .prologue
    .line 465
    iput-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$6;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 468
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$6;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/AudioPlayerAlert;->access$2700(Lorg/telegram/ui/Components/AudioPlayerAlert;I)V

    .line 469
    return-void
.end method
