.class public Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/support/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecycledViewPool"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool$ScrapData;
    }
.end annotation


# static fields
.field private static final DEFAULT_MAX_SCRAP:I = 0x14


# instance fields
.field private mAttachCount:I

.field mScrap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool$ScrapData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5009
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5032
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    .line 5034
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool;->mAttachCount:I

    return-void
.end method

.method private getScrapDataForType(I)Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool$ScrapData;
    .locals 2
    .param p1, "viewType"    # I

    .prologue
    .line 5157
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool$ScrapData;

    .line 5158
    .local v0, "scrapData":Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool$ScrapData;
    if-nez v0, :cond_0

    .line 5159
    new-instance v0, Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool$ScrapData;

    .end local v0    # "scrapData":Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool$ScrapData;
    invoke-direct {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool$ScrapData;-><init>()V

    .line 5160
    .restart local v0    # "scrapData":Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool$ScrapData;
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5162
    :cond_0
    return-object v0
.end method


# virtual methods
.method attach(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V
    .locals 1
    .param p1, "adapter"    # Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    .prologue
    .line 5124
    iget v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool;->mAttachCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool;->mAttachCount:I

    .line 5125
    return-void
.end method

.method public clear()V
    .locals 3

    .prologue
    .line 5037
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 5038
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool$ScrapData;

    .line 5039
    .local v0, "data":Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool$ScrapData;
    iget-object v2, v0, Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool$ScrapData;->mScrapHeap:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 5037
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5041
    .end local v0    # "data":Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool$ScrapData;
    :cond_0
    return-void
.end method

.method detach()V
    .locals 1

    .prologue
    .line 5128
    iget v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool;->mAttachCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool;->mAttachCount:I

    .line 5129
    return-void
.end method

.method factorInBindTime(IJ)V
    .locals 4
    .param p1, "viewType"    # I
    .param p2, "bindTimeNs"    # J

    .prologue
    .line 5108
    invoke-direct {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool;->getScrapDataForType(I)Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool$ScrapData;

    move-result-object v0

    .line 5109
    .local v0, "scrapData":Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool$ScrapData;
    iget-wide v2, v0, Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool$ScrapData;->mBindRunningAverageNs:J

    invoke-virtual {p0, v2, v3, p2, p3}, Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool;->runningAverage(JJ)J

    move-result-wide v2

    iput-wide v2, v0, Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool$ScrapData;->mBindRunningAverageNs:J

    .line 5111
    return-void
.end method

.method factorInCreateTime(IJ)V
    .locals 4
    .param p1, "viewType"    # I
    .param p2, "createTimeNs"    # J

    .prologue
    .line 5102
    invoke-direct {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool;->getScrapDataForType(I)Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool$ScrapData;

    move-result-object v0

    .line 5103
    .local v0, "scrapData":Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool$ScrapData;
    iget-wide v2, v0, Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool$ScrapData;->mCreateRunningAverageNs:J

    invoke-virtual {p0, v2, v3, p2, p3}, Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool;->runningAverage(JJ)J

    move-result-wide v2

    iput-wide v2, v0, Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool$ScrapData;->mCreateRunningAverageNs:J

    .line 5105
    return-void
.end method

.method public getRecycledView(I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .locals 3
    .param p1, "viewType"    # I

    .prologue
    .line 5062
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool$ScrapData;

    .line 5063
    .local v0, "scrapData":Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool$ScrapData;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool$ScrapData;->mScrapHeap:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 5064
    iget-object v1, v0, Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool$ScrapData;->mScrapHeap:Ljava/util/ArrayList;

    .line 5065
    .local v1, "scrapHeap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .line 5067
    .end local v1    # "scrapHeap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;>;"
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getRecycledViewCount(I)I
    .locals 1
    .param p1, "viewType"    # I

    .prologue
    .line 5058
    invoke-direct {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool;->getScrapDataForType(I)Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool$ScrapData;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool$ScrapData;->mScrapHeap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method onAdapterChanged(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;Z)V
    .locals 1
    .param p1, "oldAdapter"    # Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;
    .param p2, "newAdapter"    # Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;
    .param p3, "compatibleWithPrevious"    # Z

    .prologue
    .line 5145
    if-eqz p1, :cond_0

    .line 5146
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool;->detach()V

    .line 5148
    :cond_0
    if-nez p3, :cond_1

    iget v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool;->mAttachCount:I

    if-nez v0, :cond_1

    .line 5149
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool;->clear()V

    .line 5151
    :cond_1
    if-eqz p2, :cond_2

    .line 5152
    invoke-virtual {p0, p2}, Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool;->attach(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    .line 5154
    :cond_2
    return-void
.end method

.method public putRecycledView(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V
    .locals 4
    .param p1, "scrap"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    .line 5082
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v1

    .line 5083
    .local v1, "viewType":I
    invoke-direct {p0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool;->getScrapDataForType(I)Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool$ScrapData;

    move-result-object v2

    iget-object v0, v2, Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool$ScrapData;->mScrapHeap:Ljava/util/ArrayList;

    .line 5084
    .local v0, "scrapHeap":Ljava/util/ArrayList;
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool$ScrapData;

    iget v2, v2, Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool$ScrapData;->mMaxScrap:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gt v2, v3, :cond_0

    .line 5092
    :goto_0
    return-void

    .line 5090
    :cond_0
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->resetInternal()V

    .line 5091
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method runningAverage(JJ)J
    .locals 7
    .param p1, "oldAverage"    # J
    .param p3, "newValue"    # J

    .prologue
    const-wide/16 v4, 0x4

    .line 5095
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 5098
    .end local p3    # "newValue":J
    :goto_0
    return-wide p3

    .restart local p3    # "newValue":J
    :cond_0
    div-long v0, p1, v4

    const-wide/16 v2, 0x3

    mul-long/2addr v0, v2

    div-long v2, p3, v4

    add-long p3, v0, v2

    goto :goto_0
.end method

.method public setMaxRecycledViews(II)V
    .locals 3
    .param p1, "viewType"    # I
    .param p2, "max"    # I

    .prologue
    .line 5044
    invoke-direct {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool;->getScrapDataForType(I)Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool$ScrapData;

    move-result-object v0

    .line 5045
    .local v0, "scrapData":Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool$ScrapData;
    iput p2, v0, Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool$ScrapData;->mMaxScrap:I

    .line 5046
    iget-object v1, v0, Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool$ScrapData;->mScrapHeap:Ljava/util/ArrayList;

    .line 5047
    .local v1, "scrapHeap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;>;"
    if-eqz v1, :cond_0

    .line 5048
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, p2, :cond_0

    .line 5049
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 5052
    :cond_0
    return-void
.end method

.method size()I
    .locals 4

    .prologue
    .line 5071
    const/4 v0, 0x0

    .line 5072
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 5073
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool$ScrapData;

    iget-object v2, v3, Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool$ScrapData;->mScrapHeap:Ljava/util/ArrayList;

    .line 5074
    .local v2, "viewHolders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;>;"
    if-eqz v2, :cond_0

    .line 5075
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v0, v3

    .line 5072
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5078
    .end local v2    # "viewHolders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;>;"
    :cond_1
    return v0
.end method

.method willBindInTime(IJJ)Z
    .locals 4
    .param p1, "viewType"    # I
    .param p2, "approxCurrentNs"    # J
    .param p4, "deadlineNs"    # J

    .prologue
    .line 5119
    invoke-direct {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool;->getScrapDataForType(I)Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool$ScrapData;

    move-result-object v2

    iget-wide v0, v2, Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool$ScrapData;->mBindRunningAverageNs:J

    .line 5120
    .local v0, "expectedDurationNs":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    add-long v2, p2, v0

    cmp-long v2, v2, p4

    if-gez v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method willCreateInTime(IJJ)Z
    .locals 4
    .param p1, "viewType"    # I
    .param p2, "approxCurrentNs"    # J
    .param p4, "deadlineNs"    # J

    .prologue
    .line 5114
    invoke-direct {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool;->getScrapDataForType(I)Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool$ScrapData;

    move-result-object v2

    iget-wide v0, v2, Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool$ScrapData;->mCreateRunningAverageNs:J

    .line 5115
    .local v0, "expectedDurationNs":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    add-long v2, p2, v0

    cmp-long v2, v2, p4

    if-gez v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
