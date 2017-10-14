.class public Lnet/hockeyapp/android/adapters/MessagesAdapter;
.super Landroid/widget/BaseAdapter;
.source "MessagesAdapter.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMessagesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lnet/hockeyapp/android/objects/FeedbackMessage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/hockeyapp/android/objects/FeedbackMessage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 17
    .local p2, "messagesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/hockeyapp/android/objects/FeedbackMessage;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 18
    iput-object p1, p0, Lnet/hockeyapp/android/adapters/MessagesAdapter;->mContext:Landroid/content/Context;

    .line 19
    iput-object p2, p0, Lnet/hockeyapp/android/adapters/MessagesAdapter;->mMessagesList:Ljava/util/ArrayList;

    .line 20
    return-void
.end method


# virtual methods
.method public add(Lnet/hockeyapp/android/objects/FeedbackMessage;)V
    .locals 1
    .param p1, "message"    # Lnet/hockeyapp/android/objects/FeedbackMessage;

    .prologue
    .line 63
    if-eqz p1, :cond_0

    iget-object v0, p0, Lnet/hockeyapp/android/adapters/MessagesAdapter;->mMessagesList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lnet/hockeyapp/android/adapters/MessagesAdapter;->mMessagesList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lnet/hockeyapp/android/adapters/MessagesAdapter;->mMessagesList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lnet/hockeyapp/android/adapters/MessagesAdapter;->mMessagesList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 60
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lnet/hockeyapp/android/adapters/MessagesAdapter;->mMessagesList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 48
    iget-object v0, p0, Lnet/hockeyapp/android/adapters/MessagesAdapter;->mMessagesList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 53
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 28
    iget-object v2, p0, Lnet/hockeyapp/android/adapters/MessagesAdapter;->mMessagesList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/hockeyapp/android/objects/FeedbackMessage;

    .line 31
    .local v0, "feedbackMessage":Lnet/hockeyapp/android/objects/FeedbackMessage;
    if-nez p2, :cond_1

    .line 32
    new-instance v1, Lnet/hockeyapp/android/views/FeedbackMessageView;

    iget-object v2, p0, Lnet/hockeyapp/android/adapters/MessagesAdapter;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lnet/hockeyapp/android/views/FeedbackMessageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    .local v1, "view":Lnet/hockeyapp/android/views/FeedbackMessageView;
    :goto_0
    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {v1, v0}, Lnet/hockeyapp/android/views/FeedbackMessageView;->setFeedbackMessage(Lnet/hockeyapp/android/objects/FeedbackMessage;)V

    .line 41
    :cond_0
    invoke-virtual {v1, p1}, Lnet/hockeyapp/android/views/FeedbackMessageView;->setIndex(I)V

    .line 43
    return-object v1

    .end local v1    # "view":Lnet/hockeyapp/android/views/FeedbackMessageView;
    :cond_1
    move-object v1, p2

    .line 34
    check-cast v1, Lnet/hockeyapp/android/views/FeedbackMessageView;

    .restart local v1    # "view":Lnet/hockeyapp/android/views/FeedbackMessageView;
    goto :goto_0
.end method
