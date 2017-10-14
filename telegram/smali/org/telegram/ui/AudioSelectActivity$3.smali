.class Lorg/telegram/ui/AudioSelectActivity$3;
.super Ljava/lang/Object;
.source "AudioSelectActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/AudioSelectActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/AudioSelectActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/AudioSelectActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/AudioSelectActivity;

    .prologue
    .line 134
    iput-object p1, p0, Lorg/telegram/ui/AudioSelectActivity$3;->this$0:Lorg/telegram/ui/AudioSelectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 137
    iget-object v0, p0, Lorg/telegram/ui/AudioSelectActivity$3;->this$0:Lorg/telegram/ui/AudioSelectActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/AudioSelectActivity;->finishFragment()V

    .line 138
    return-void
.end method
