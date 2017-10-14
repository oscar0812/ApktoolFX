.class Lorg/telegram/ui/PrivacyControlActivity$2;
.super Ljava/lang/Object;
.source "PrivacyControlActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PrivacyControlActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PrivacyControlActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PrivacyControlActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/PrivacyControlActivity;

    .prologue
    .line 177
    iput-object p1, p0, Lorg/telegram/ui/PrivacyControlActivity$2;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 180
    iget-object v4, p0, Lorg/telegram/ui/PrivacyControlActivity$2;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v4}, Lorg/telegram/ui/PrivacyControlActivity;->access$300(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v4

    if-eq p2, v4, :cond_0

    iget-object v4, p0, Lorg/telegram/ui/PrivacyControlActivity$2;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v4}, Lorg/telegram/ui/PrivacyControlActivity;->access$400(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v4

    if-eq p2, v4, :cond_0

    iget-object v4, p0, Lorg/telegram/ui/PrivacyControlActivity$2;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v4}, Lorg/telegram/ui/PrivacyControlActivity;->access$500(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v4

    if-ne p2, v4, :cond_6

    .line 181
    :cond_0
    iget-object v4, p0, Lorg/telegram/ui/PrivacyControlActivity$2;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v4}, Lorg/telegram/ui/PrivacyControlActivity;->access$000(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v3

    .line 182
    .local v3, "newType":I
    iget-object v4, p0, Lorg/telegram/ui/PrivacyControlActivity$2;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v4}, Lorg/telegram/ui/PrivacyControlActivity;->access$300(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v4

    if-ne p2, v4, :cond_3

    .line 183
    const/4 v3, 0x1

    .line 189
    :cond_1
    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/PrivacyControlActivity$2;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v4}, Lorg/telegram/ui/PrivacyControlActivity;->access$000(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v4

    if-ne v3, v4, :cond_5

    .line 256
    .end local v3    # "newType":I
    :cond_2
    :goto_1
    return-void

    .line 184
    .restart local v3    # "newType":I
    :cond_3
    iget-object v4, p0, Lorg/telegram/ui/PrivacyControlActivity$2;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v4}, Lorg/telegram/ui/PrivacyControlActivity;->access$400(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v4

    if-ne p2, v4, :cond_4

    .line 185
    const/4 v3, 0x0

    goto :goto_0

    .line 186
    :cond_4
    iget-object v4, p0, Lorg/telegram/ui/PrivacyControlActivity$2;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v4}, Lorg/telegram/ui/PrivacyControlActivity;->access$500(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v4

    if-ne p2, v4, :cond_1

    .line 187
    const/4 v3, 0x2

    goto :goto_0

    .line 192
    :cond_5
    iget-object v4, p0, Lorg/telegram/ui/PrivacyControlActivity$2;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v4, v5}, Lorg/telegram/ui/PrivacyControlActivity;->access$602(Lorg/telegram/ui/PrivacyControlActivity;Z)Z

    .line 193
    iget-object v4, p0, Lorg/telegram/ui/PrivacyControlActivity$2;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v4}, Lorg/telegram/ui/PrivacyControlActivity;->access$700(Lorg/telegram/ui/PrivacyControlActivity;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 194
    iget-object v4, p0, Lorg/telegram/ui/PrivacyControlActivity$2;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    iget-object v5, p0, Lorg/telegram/ui/PrivacyControlActivity$2;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v5}, Lorg/telegram/ui/PrivacyControlActivity;->access$000(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v5

    invoke-static {v4, v5}, Lorg/telegram/ui/PrivacyControlActivity;->access$802(Lorg/telegram/ui/PrivacyControlActivity;I)I

    .line 195
    iget-object v4, p0, Lorg/telegram/ui/PrivacyControlActivity$2;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v4, v3}, Lorg/telegram/ui/PrivacyControlActivity;->access$002(Lorg/telegram/ui/PrivacyControlActivity;I)I

    .line 196
    iget-object v4, p0, Lorg/telegram/ui/PrivacyControlActivity$2;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v4}, Lorg/telegram/ui/PrivacyControlActivity;->access$900(Lorg/telegram/ui/PrivacyControlActivity;)V

    goto :goto_1

    .line 197
    .end local v3    # "newType":I
    :cond_6
    iget-object v4, p0, Lorg/telegram/ui/PrivacyControlActivity$2;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v4}, Lorg/telegram/ui/PrivacyControlActivity;->access$1000(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v4

    if-eq p2, v4, :cond_7

    iget-object v4, p0, Lorg/telegram/ui/PrivacyControlActivity$2;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v4}, Lorg/telegram/ui/PrivacyControlActivity;->access$1100(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v4

    if-ne p2, v4, :cond_2

    .line 199
    :cond_7
    iget-object v4, p0, Lorg/telegram/ui/PrivacyControlActivity$2;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v4}, Lorg/telegram/ui/PrivacyControlActivity;->access$1000(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v4

    if-ne p2, v4, :cond_8

    .line 200
    iget-object v4, p0, Lorg/telegram/ui/PrivacyControlActivity$2;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v4}, Lorg/telegram/ui/PrivacyControlActivity;->access$1200(Lorg/telegram/ui/PrivacyControlActivity;)Ljava/util/ArrayList;

    move-result-object v1

    .line 204
    .local v1, "createFromArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 205
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 206
    .local v0, "args":Landroid/os/Bundle;
    iget-object v4, p0, Lorg/telegram/ui/PrivacyControlActivity$2;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v4}, Lorg/telegram/ui/PrivacyControlActivity;->access$1000(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v4

    if-ne p2, v4, :cond_9

    const-string/jumbo v4, "isNeverShare"

    :goto_3
    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 207
    const-string/jumbo v7, "isGroup"

    iget-object v4, p0, Lorg/telegram/ui/PrivacyControlActivity$2;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v4}, Lorg/telegram/ui/PrivacyControlActivity;->access$100(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v4

    if-eqz v4, :cond_a

    move v4, v5

    :goto_4
    invoke-virtual {v0, v7, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 208
    new-instance v2, Lorg/telegram/ui/GroupCreateActivity;

    invoke-direct {v2, v0}, Lorg/telegram/ui/GroupCreateActivity;-><init>(Landroid/os/Bundle;)V

    .line 209
    .local v2, "fragment":Lorg/telegram/ui/GroupCreateActivity;
    new-instance v4, Lorg/telegram/ui/PrivacyControlActivity$2$1;

    invoke-direct {v4, p0, p2}, Lorg/telegram/ui/PrivacyControlActivity$2$1;-><init>(Lorg/telegram/ui/PrivacyControlActivity$2;I)V

    invoke-virtual {v2, v4}, Lorg/telegram/ui/GroupCreateActivity;->setDelegate(Lorg/telegram/ui/GroupCreateActivity$GroupCreateActivityDelegate;)V

    .line 228
    iget-object v4, p0, Lorg/telegram/ui/PrivacyControlActivity$2;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-virtual {v4, v2}, Lorg/telegram/ui/PrivacyControlActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_1

    .line 202
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v1    # "createFromArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v2    # "fragment":Lorg/telegram/ui/GroupCreateActivity;
    :cond_8
    iget-object v4, p0, Lorg/telegram/ui/PrivacyControlActivity$2;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v4}, Lorg/telegram/ui/PrivacyControlActivity;->access$1300(Lorg/telegram/ui/PrivacyControlActivity;)Ljava/util/ArrayList;

    move-result-object v1

    .restart local v1    # "createFromArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    goto :goto_2

    .line 206
    .restart local v0    # "args":Landroid/os/Bundle;
    :cond_9
    const-string/jumbo v4, "isAlwaysShare"

    goto :goto_3

    :cond_a
    move v4, v6

    .line 207
    goto :goto_4

    .line 230
    .end local v0    # "args":Landroid/os/Bundle;
    :cond_b
    new-instance v2, Lorg/telegram/ui/PrivacyUsersActivity;

    iget-object v4, p0, Lorg/telegram/ui/PrivacyControlActivity$2;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v4}, Lorg/telegram/ui/PrivacyControlActivity;->access$100(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v4

    if-eqz v4, :cond_c

    move v4, v5

    :goto_5
    iget-object v7, p0, Lorg/telegram/ui/PrivacyControlActivity$2;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v7}, Lorg/telegram/ui/PrivacyControlActivity;->access$1100(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v7

    if-ne p2, v7, :cond_d

    :goto_6
    invoke-direct {v2, v1, v4, v5}, Lorg/telegram/ui/PrivacyUsersActivity;-><init>(Ljava/util/ArrayList;ZZ)V

    .line 231
    .local v2, "fragment":Lorg/telegram/ui/PrivacyUsersActivity;
    new-instance v4, Lorg/telegram/ui/PrivacyControlActivity$2$2;

    invoke-direct {v4, p0, p2}, Lorg/telegram/ui/PrivacyControlActivity$2$2;-><init>(Lorg/telegram/ui/PrivacyControlActivity$2;I)V

    invoke-virtual {v2, v4}, Lorg/telegram/ui/PrivacyUsersActivity;->setDelegate(Lorg/telegram/ui/PrivacyUsersActivity$PrivacyActivityDelegate;)V

    .line 253
    iget-object v4, p0, Lorg/telegram/ui/PrivacyControlActivity$2;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-virtual {v4, v2}, Lorg/telegram/ui/PrivacyControlActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_1

    .end local v2    # "fragment":Lorg/telegram/ui/PrivacyUsersActivity;
    :cond_c
    move v4, v6

    .line 230
    goto :goto_5

    :cond_d
    move v5, v6

    goto :goto_6
.end method
