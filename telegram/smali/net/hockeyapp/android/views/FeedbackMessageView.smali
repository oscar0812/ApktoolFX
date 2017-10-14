.class public Lnet/hockeyapp/android/views/FeedbackMessageView;
.super Landroid/widget/LinearLayout;
.source "FeedbackMessageView.java"


# static fields
.field private static final DATE_FORMAT_IN:Ljava/text/SimpleDateFormat;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation
.end field

.field private static final DATE_FORMAT_OUT:Ljava/text/SimpleDateFormat;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation
.end field


# instance fields
.field private mAttachmentListView:Lnet/hockeyapp/android/views/AttachmentListView;

.field private mAuthorTextView:Landroid/widget/TextView;

.field private final mContext:Landroid/content/Context;

.field private mDateTextView:Landroid/widget/TextView;

.field private mFeedbackMessage:Lnet/hockeyapp/android/objects/FeedbackMessage;

.field private mMessageTextView:Landroid/widget/TextView;

.field private ownMessage:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 28
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnet/hockeyapp/android/views/FeedbackMessageView;->DATE_FORMAT_IN:Ljava/text/SimpleDateFormat;

    .line 30
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "d MMM h:mm a"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnet/hockeyapp/android/views/FeedbackMessageView;->DATE_FORMAT_OUT:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    iput-object p1, p0, Lnet/hockeyapp/android/views/FeedbackMessageView;->mContext:Landroid/content/Context;

    .line 49
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lnet/hockeyapp/android/R$layout;->hockeyapp_view_feedback_message:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 51
    sget v0, Lnet/hockeyapp/android/R$id;->label_author:I

    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/views/FeedbackMessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lnet/hockeyapp/android/views/FeedbackMessageView;->mAuthorTextView:Landroid/widget/TextView;

    .line 52
    sget v0, Lnet/hockeyapp/android/R$id;->label_date:I

    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/views/FeedbackMessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lnet/hockeyapp/android/views/FeedbackMessageView;->mDateTextView:Landroid/widget/TextView;

    .line 53
    sget v0, Lnet/hockeyapp/android/R$id;->label_text:I

    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/views/FeedbackMessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lnet/hockeyapp/android/views/FeedbackMessageView;->mMessageTextView:Landroid/widget/TextView;

    .line 54
    sget v0, Lnet/hockeyapp/android/R$id;->list_attachments:I

    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/views/FeedbackMessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lnet/hockeyapp/android/views/AttachmentListView;

    iput-object v0, p0, Lnet/hockeyapp/android/views/FeedbackMessageView;->mAttachmentListView:Lnet/hockeyapp/android/views/AttachmentListView;

    .line 56
    return-void
.end method


# virtual methods
.method public setFeedbackMessage(Lnet/hockeyapp/android/objects/FeedbackMessage;)V
    .locals 8
    .param p1, "feedbackMessage"    # Lnet/hockeyapp/android/objects/FeedbackMessage;

    .prologue
    .line 59
    iput-object p1, p0, Lnet/hockeyapp/android/views/FeedbackMessageView;->mFeedbackMessage:Lnet/hockeyapp/android/objects/FeedbackMessage;

    .line 62
    :try_start_0
    sget-object v4, Lnet/hockeyapp/android/views/FeedbackMessageView;->DATE_FORMAT_IN:Ljava/text/SimpleDateFormat;

    iget-object v5, p0, Lnet/hockeyapp/android/views/FeedbackMessageView;->mFeedbackMessage:Lnet/hockeyapp/android/objects/FeedbackMessage;

    invoke-virtual {v5}, Lnet/hockeyapp/android/objects/FeedbackMessage;->getCreatedAt()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 63
    .local v1, "date":Ljava/util/Date;
    iget-object v4, p0, Lnet/hockeyapp/android/views/FeedbackMessageView;->mDateTextView:Landroid/widget/TextView;

    sget-object v5, Lnet/hockeyapp/android/views/FeedbackMessageView;->DATE_FORMAT_OUT:Ljava/text/SimpleDateFormat;

    invoke-virtual {v5, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    .end local v1    # "date":Ljava/util/Date;
    :goto_0
    iget-object v4, p0, Lnet/hockeyapp/android/views/FeedbackMessageView;->mAuthorTextView:Landroid/widget/TextView;

    iget-object v5, p0, Lnet/hockeyapp/android/views/FeedbackMessageView;->mFeedbackMessage:Lnet/hockeyapp/android/objects/FeedbackMessage;

    invoke-virtual {v5}, Lnet/hockeyapp/android/objects/FeedbackMessage;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v4, p0, Lnet/hockeyapp/android/views/FeedbackMessageView;->mMessageTextView:Landroid/widget/TextView;

    iget-object v5, p0, Lnet/hockeyapp/android/views/FeedbackMessageView;->mFeedbackMessage:Lnet/hockeyapp/android/objects/FeedbackMessage;

    invoke-virtual {v5}, Lnet/hockeyapp/android/objects/FeedbackMessage;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v4, p0, Lnet/hockeyapp/android/views/FeedbackMessageView;->mAttachmentListView:Lnet/hockeyapp/android/views/AttachmentListView;

    invoke-virtual {v4}, Lnet/hockeyapp/android/views/AttachmentListView;->removeAllViews()V

    .line 72
    iget-object v4, p0, Lnet/hockeyapp/android/views/FeedbackMessageView;->mFeedbackMessage:Lnet/hockeyapp/android/objects/FeedbackMessage;

    invoke-virtual {v4}, Lnet/hockeyapp/android/objects/FeedbackMessage;->getFeedbackAttachments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/hockeyapp/android/objects/FeedbackAttachment;

    .line 73
    .local v3, "feedbackAttachment":Lnet/hockeyapp/android/objects/FeedbackAttachment;
    new-instance v0, Lnet/hockeyapp/android/views/AttachmentView;

    iget-object v5, p0, Lnet/hockeyapp/android/views/FeedbackMessageView;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lnet/hockeyapp/android/views/FeedbackMessageView;->mAttachmentListView:Lnet/hockeyapp/android/views/AttachmentListView;

    const/4 v7, 0x0

    invoke-direct {v0, v5, v6, v3, v7}, Lnet/hockeyapp/android/views/AttachmentView;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lnet/hockeyapp/android/objects/FeedbackAttachment;Z)V

    .line 74
    .local v0, "attachmentView":Lnet/hockeyapp/android/views/AttachmentView;
    invoke-static {}, Lnet/hockeyapp/android/tasks/AttachmentDownloader;->getInstance()Lnet/hockeyapp/android/tasks/AttachmentDownloader;

    move-result-object v5

    invoke-virtual {v5, v3, v0}, Lnet/hockeyapp/android/tasks/AttachmentDownloader;->download(Lnet/hockeyapp/android/objects/FeedbackAttachment;Lnet/hockeyapp/android/views/AttachmentView;)V

    .line 75
    iget-object v5, p0, Lnet/hockeyapp/android/views/FeedbackMessageView;->mAttachmentListView:Lnet/hockeyapp/android/views/AttachmentListView;

    invoke-virtual {v5, v0}, Lnet/hockeyapp/android/views/AttachmentListView;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 64
    .end local v0    # "attachmentView":Lnet/hockeyapp/android/views/AttachmentView;
    .end local v3    # "feedbackAttachment":Lnet/hockeyapp/android/objects/FeedbackAttachment;
    :catch_0
    move-exception v2

    .line 65
    .local v2, "e":Ljava/text/ParseException;
    invoke-virtual {v2}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0

    .line 77
    .end local v2    # "e":Ljava/text/ParseException;
    :cond_0
    return-void
.end method

.method public setIndex(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 87
    rem-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_0

    .line 89
    invoke-virtual {p0}, Lnet/hockeyapp/android/views/FeedbackMessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lnet/hockeyapp/android/R$color;->hockeyapp_background_light:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/views/FeedbackMessageView;->setBackgroundColor(I)V

    .line 90
    iget-object v0, p0, Lnet/hockeyapp/android/views/FeedbackMessageView;->mAuthorTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lnet/hockeyapp/android/views/FeedbackMessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lnet/hockeyapp/android/R$color;->hockeyapp_text_white:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 91
    iget-object v0, p0, Lnet/hockeyapp/android/views/FeedbackMessageView;->mDateTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lnet/hockeyapp/android/views/FeedbackMessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lnet/hockeyapp/android/R$color;->hockeyapp_text_white:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 100
    :goto_0
    iget-object v0, p0, Lnet/hockeyapp/android/views/FeedbackMessageView;->mMessageTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lnet/hockeyapp/android/views/FeedbackMessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lnet/hockeyapp/android/R$color;->hockeyapp_text_black:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 101
    return-void

    .line 95
    :cond_0
    invoke-virtual {p0}, Lnet/hockeyapp/android/views/FeedbackMessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lnet/hockeyapp/android/R$color;->hockeyapp_background_white:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/views/FeedbackMessageView;->setBackgroundColor(I)V

    .line 96
    iget-object v0, p0, Lnet/hockeyapp/android/views/FeedbackMessageView;->mAuthorTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lnet/hockeyapp/android/views/FeedbackMessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lnet/hockeyapp/android/R$color;->hockeyapp_text_light:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 97
    iget-object v0, p0, Lnet/hockeyapp/android/views/FeedbackMessageView;->mDateTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lnet/hockeyapp/android/views/FeedbackMessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lnet/hockeyapp/android/R$color;->hockeyapp_text_light:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method
