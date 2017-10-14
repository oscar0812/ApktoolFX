.class Lorg/telegram/ui/ConvertGroupActivity$1;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "ConvertGroupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ConvertGroupActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ConvertGroupActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ConvertGroupActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/ConvertGroupActivity;

    .prologue
    .line 76
    iput-object p1, p0, Lorg/telegram/ui/ConvertGroupActivity$1;->this$0:Lorg/telegram/ui/ConvertGroupActivity;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 79
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 80
    iget-object v0, p0, Lorg/telegram/ui/ConvertGroupActivity$1;->this$0:Lorg/telegram/ui/ConvertGroupActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ConvertGroupActivity;->finishFragment()V

    .line 82
    :cond_0
    return-void
.end method
