.class Lorg/telegram/ui/VoIPActivity$2;
.super Ljava/lang/Object;
.source "VoIPActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/VoIPActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private tapCount:I

.field final synthetic this$0:Lorg/telegram/ui/VoIPActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/VoIPActivity;)V
    .locals 1
    .param p1, "this$0"    # Lorg/telegram/ui/VoIPActivity;

    .prologue
    .line 178
    iput-object p1, p0, Lorg/telegram/ui/VoIPActivity$2;->this$0:Lorg/telegram/ui/VoIPActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/VoIPActivity$2;->tapCount:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 182
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/VoIPActivity$2;->tapCount:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    .line 183
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity$2;->this$0:Lorg/telegram/ui/VoIPActivity;

    invoke-static {v0}, Lorg/telegram/ui/VoIPActivity;->access$100(Lorg/telegram/ui/VoIPActivity;)V

    .line 184
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/VoIPActivity$2;->tapCount:I

    .line 188
    :goto_0
    return-void

    .line 186
    :cond_1
    iget v0, p0, Lorg/telegram/ui/VoIPActivity$2;->tapCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/telegram/ui/VoIPActivity$2;->tapCount:I

    goto :goto_0
.end method
