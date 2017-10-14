.class Lorg/telegram/ui/GroupStickersActivity$1;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "GroupStickersActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/GroupStickersActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/GroupStickersActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/GroupStickersActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/GroupStickersActivity;

    .prologue
    .line 144
    iput-object p1, p0, Lorg/telegram/ui/GroupStickersActivity$1;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    const/4 v1, 0x1

    .line 147
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 148
    iget-object v0, p0, Lorg/telegram/ui/GroupStickersActivity$1;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/GroupStickersActivity;->finishFragment()V

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    if-ne p1, v1, :cond_0

    .line 150
    iget-object v0, p0, Lorg/telegram/ui/GroupStickersActivity$1;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupStickersActivity;->access$000(Lorg/telegram/ui/GroupStickersActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 153
    iget-object v0, p0, Lorg/telegram/ui/GroupStickersActivity$1;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v0, v1}, Lorg/telegram/ui/GroupStickersActivity;->access$002(Lorg/telegram/ui/GroupStickersActivity;Z)Z

    .line 154
    iget-object v0, p0, Lorg/telegram/ui/GroupStickersActivity$1;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupStickersActivity;->access$100(Lorg/telegram/ui/GroupStickersActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 155
    iget-object v0, p0, Lorg/telegram/ui/GroupStickersActivity$1;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v0, v1}, Lorg/telegram/ui/GroupStickersActivity;->access$200(Lorg/telegram/ui/GroupStickersActivity;Z)V

    goto :goto_0

    .line 158
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/GroupStickersActivity$1;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupStickersActivity;->access$300(Lorg/telegram/ui/GroupStickersActivity;)V

    goto :goto_0
.end method
