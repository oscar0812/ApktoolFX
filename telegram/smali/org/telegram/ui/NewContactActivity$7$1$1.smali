.class Lorg/telegram/ui/NewContactActivity$7$1$1;
.super Ljava/lang/Object;
.source "NewContactActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/NewContactActivity$7$1;->didSelectCountry(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/NewContactActivity$7$1;


# direct methods
.method constructor <init>(Lorg/telegram/ui/NewContactActivity$7$1;)V
    .locals 0
    .param p1, "this$2"    # Lorg/telegram/ui/NewContactActivity$7$1;

    .prologue
    .line 337
    iput-object p1, p0, Lorg/telegram/ui/NewContactActivity$7$1$1;->this$2:Lorg/telegram/ui/NewContactActivity$7$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lorg/telegram/ui/NewContactActivity$7$1$1;->this$2:Lorg/telegram/ui/NewContactActivity$7$1;

    iget-object v0, v0, Lorg/telegram/ui/NewContactActivity$7$1;->this$1:Lorg/telegram/ui/NewContactActivity$7;

    iget-object v0, v0, Lorg/telegram/ui/NewContactActivity$7;->this$0:Lorg/telegram/ui/NewContactActivity;

    invoke-static {v0}, Lorg/telegram/ui/NewContactActivity;->access$300(Lorg/telegram/ui/NewContactActivity;)Lorg/telegram/ui/Components/HintEditText;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)V

    .line 341
    return-void
.end method
