.class final Lorg/telegram/messenger/SendMessagesHelper$14;
.super Ljava/lang/Object;
.source "SendMessagesHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/SendMessagesHelper;->prepareSendingDocuments(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Landroid/support/v13/view/inputmethod/InputContentInfoCompat;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$dialog_id:J

.field final synthetic val$inputContent:Landroid/support/v13/view/inputmethod/InputContentInfoCompat;

.field final synthetic val$mime:Ljava/lang/String;

.field final synthetic val$originalPaths:Ljava/util/ArrayList;

.field final synthetic val$paths:Ljava/util/ArrayList;

.field final synthetic val$reply_to_msg:Lorg/telegram/messenger/MessageObject;

.field final synthetic val$uris:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Ljava/util/ArrayList;Landroid/support/v13/view/inputmethod/InputContentInfoCompat;)V
    .locals 0

    .prologue
    .line 3110
    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$14;->val$paths:Ljava/util/ArrayList;

    iput-object p2, p0, Lorg/telegram/messenger/SendMessagesHelper$14;->val$originalPaths:Ljava/util/ArrayList;

    iput-object p3, p0, Lorg/telegram/messenger/SendMessagesHelper$14;->val$mime:Ljava/lang/String;

    iput-wide p4, p0, Lorg/telegram/messenger/SendMessagesHelper$14;->val$dialog_id:J

    iput-object p6, p0, Lorg/telegram/messenger/SendMessagesHelper$14;->val$reply_to_msg:Lorg/telegram/messenger/MessageObject;

    iput-object p7, p0, Lorg/telegram/messenger/SendMessagesHelper$14;->val$uris:Ljava/util/ArrayList;

    iput-object p8, p0, Lorg/telegram/messenger/SendMessagesHelper$14;->val$inputContent:Landroid/support/v13/view/inputmethod/InputContentInfoCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v2, 0x0

    .line 3113
    const/4 v11, 0x0

    .line 3114
    .local v11, "error":Z
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$14;->val$paths:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 3115
    const/4 v10, 0x0

    .local v10, "a":I
    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$14;->val$paths:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v10, v0, :cond_1

    .line 3116
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$14;->val$paths:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/telegram/messenger/SendMessagesHelper$14;->val$originalPaths:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v3, p0, Lorg/telegram/messenger/SendMessagesHelper$14;->val$mime:Ljava/lang/String;

    iget-wide v4, p0, Lorg/telegram/messenger/SendMessagesHelper$14;->val$dialog_id:J

    iget-object v6, p0, Lorg/telegram/messenger/SendMessagesHelper$14;->val$reply_to_msg:Lorg/telegram/messenger/MessageObject;

    move-object v7, v2

    invoke-static/range {v0 .. v7}, Lorg/telegram/messenger/SendMessagesHelper;->access$1000(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3117
    const/4 v11, 0x1

    .line 3115
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 3121
    .end local v10    # "a":I
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$14;->val$uris:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 3122
    const/4 v10, 0x0

    .restart local v10    # "a":I
    :goto_1
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$14;->val$uris:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v10, v0, :cond_3

    .line 3123
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$14;->val$uris:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    iget-object v5, p0, Lorg/telegram/messenger/SendMessagesHelper$14;->val$mime:Ljava/lang/String;

    iget-wide v6, p0, Lorg/telegram/messenger/SendMessagesHelper$14;->val$dialog_id:J

    iget-object v8, p0, Lorg/telegram/messenger/SendMessagesHelper$14;->val$reply_to_msg:Lorg/telegram/messenger/MessageObject;

    move-object v3, v2

    move-object v9, v2

    invoke-static/range {v2 .. v9}, Lorg/telegram/messenger/SendMessagesHelper;->access$1000(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3124
    const/4 v11, 0x1

    .line 3122
    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 3128
    .end local v10    # "a":I
    :cond_3
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$14;->val$inputContent:Landroid/support/v13/view/inputmethod/InputContentInfoCompat;

    if-eqz v0, :cond_4

    .line 3129
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$14;->val$inputContent:Landroid/support/v13/view/inputmethod/InputContentInfoCompat;

    invoke-virtual {v0}, Landroid/support/v13/view/inputmethod/InputContentInfoCompat;->releasePermission()V

    .line 3131
    :cond_4
    if-eqz v11, :cond_5

    .line 3132
    new-instance v0, Lorg/telegram/messenger/SendMessagesHelper$14$1;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/SendMessagesHelper$14$1;-><init>(Lorg/telegram/messenger/SendMessagesHelper$14;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 3144
    :cond_5
    return-void
.end method
