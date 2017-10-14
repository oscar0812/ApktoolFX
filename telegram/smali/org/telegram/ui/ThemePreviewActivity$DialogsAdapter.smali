.class public Lorg/telegram/ui/ThemePreviewActivity$DialogsAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "ThemePreviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ThemePreviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DialogsAdapter"
.end annotation


# instance fields
.field private dialogs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/ui/Cells/DialogCell$CustomDialog;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/ThemePreviewActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ThemePreviewActivity;Landroid/content/Context;)V
    .locals 10
    .param p1, "this$0"    # Lorg/telegram/ui/ThemePreviewActivity;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 414
    iput-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity$DialogsAdapter;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 415
    iput-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity$DialogsAdapter;->mContext:Landroid/content/Context;

    .line 416
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity$DialogsAdapter;->dialogs:Ljava/util/ArrayList;

    .line 418
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v1, v2

    .line 419
    .local v1, "date":I
    new-instance v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    invoke-direct {v0}, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;-><init>()V

    .line 420
    .local v0, "customDialog":Lorg/telegram/ui/Cells/DialogCell$CustomDialog;
    const-string/jumbo v2, "Eva Summer"

    iput-object v2, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->name:Ljava/lang/String;

    .line 421
    const-string/jumbo v2, "Reminds me of a Chinese prove..."

    iput-object v2, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->message:Ljava/lang/String;

    .line 422
    iput v6, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->id:I

    .line 423
    iput v6, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->unread_count:I

    .line 424
    iput-boolean v7, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->pinned:Z

    .line 425
    iput-boolean v6, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->muted:Z

    .line 426
    iput v6, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->type:I

    .line 427
    iput v1, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->date:I

    .line 428
    iput-boolean v6, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->verified:Z

    .line 429
    iput-boolean v6, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->isMedia:Z

    .line 430
    iput-boolean v7, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->sent:Z

    .line 431
    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity$DialogsAdapter;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 433
    new-instance v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    .end local v0    # "customDialog":Lorg/telegram/ui/Cells/DialogCell$CustomDialog;
    invoke-direct {v0}, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;-><init>()V

    .line 434
    .restart local v0    # "customDialog":Lorg/telegram/ui/Cells/DialogCell$CustomDialog;
    const-string/jumbo v2, "Alexandra Smith"

    iput-object v2, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->name:Ljava/lang/String;

    .line 435
    const-string/jumbo v2, "Reminds me of a Chinese prove..."

    iput-object v2, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->message:Ljava/lang/String;

    .line 436
    iput v7, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->id:I

    .line 437
    iput v8, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->unread_count:I

    .line 438
    iput-boolean v6, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->pinned:Z

    .line 439
    iput-boolean v6, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->muted:Z

    .line 440
    iput v6, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->type:I

    .line 441
    add-int/lit16 v2, v1, -0xe10

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->date:I

    .line 442
    iput-boolean v6, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->verified:Z

    .line 443
    iput-boolean v6, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->isMedia:Z

    .line 444
    iput-boolean v6, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->sent:Z

    .line 445
    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity$DialogsAdapter;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 447
    new-instance v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    .end local v0    # "customDialog":Lorg/telegram/ui/Cells/DialogCell$CustomDialog;
    invoke-direct {v0}, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;-><init>()V

    .line 448
    .restart local v0    # "customDialog":Lorg/telegram/ui/Cells/DialogCell$CustomDialog;
    const-string/jumbo v2, "Make Apple"

    iput-object v2, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->name:Ljava/lang/String;

    .line 449
    const-string/jumbo v2, "\ud83e\udd37\u200d\u2642\ufe0f Sticker"

    iput-object v2, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->message:Ljava/lang/String;

    .line 450
    iput v8, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->id:I

    .line 451
    iput v9, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->unread_count:I

    .line 452
    iput-boolean v6, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->pinned:Z

    .line 453
    iput-boolean v7, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->muted:Z

    .line 454
    iput v6, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->type:I

    .line 455
    add-int/lit16 v2, v1, -0x1c20

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->date:I

    .line 456
    iput-boolean v6, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->verified:Z

    .line 457
    iput-boolean v7, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->isMedia:Z

    .line 458
    iput-boolean v6, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->sent:Z

    .line 459
    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity$DialogsAdapter;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 461
    new-instance v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    .end local v0    # "customDialog":Lorg/telegram/ui/Cells/DialogCell$CustomDialog;
    invoke-direct {v0}, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;-><init>()V

    .line 462
    .restart local v0    # "customDialog":Lorg/telegram/ui/Cells/DialogCell$CustomDialog;
    const-string/jumbo v2, "Paul Newman"

    iput-object v2, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->name:Ljava/lang/String;

    .line 463
    const-string/jumbo v2, "Any ideas?"

    iput-object v2, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->message:Ljava/lang/String;

    .line 464
    iput v9, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->id:I

    .line 465
    iput v6, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->unread_count:I

    .line 466
    iput-boolean v6, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->pinned:Z

    .line 467
    iput-boolean v6, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->muted:Z

    .line 468
    iput v8, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->type:I

    .line 469
    add-int/lit16 v2, v1, -0x2a30

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->date:I

    .line 470
    iput-boolean v6, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->verified:Z

    .line 471
    iput-boolean v6, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->isMedia:Z

    .line 472
    iput-boolean v6, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->sent:Z

    .line 473
    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity$DialogsAdapter;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 475
    new-instance v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    .end local v0    # "customDialog":Lorg/telegram/ui/Cells/DialogCell$CustomDialog;
    invoke-direct {v0}, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;-><init>()V

    .line 476
    .restart local v0    # "customDialog":Lorg/telegram/ui/Cells/DialogCell$CustomDialog;
    const-string/jumbo v2, "Old Pirates"

    iput-object v2, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->name:Ljava/lang/String;

    .line 477
    const-string/jumbo v2, "Yo-ho-ho!"

    iput-object v2, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->message:Ljava/lang/String;

    .line 478
    const/4 v2, 0x4

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->id:I

    .line 479
    iput v6, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->unread_count:I

    .line 480
    iput-boolean v6, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->pinned:Z

    .line 481
    iput-boolean v6, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->muted:Z

    .line 482
    iput v7, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->type:I

    .line 483
    add-int/lit16 v2, v1, -0x3840

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->date:I

    .line 484
    iput-boolean v6, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->verified:Z

    .line 485
    iput-boolean v6, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->isMedia:Z

    .line 486
    iput-boolean v7, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->sent:Z

    .line 487
    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity$DialogsAdapter;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 489
    new-instance v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    .end local v0    # "customDialog":Lorg/telegram/ui/Cells/DialogCell$CustomDialog;
    invoke-direct {v0}, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;-><init>()V

    .line 490
    .restart local v0    # "customDialog":Lorg/telegram/ui/Cells/DialogCell$CustomDialog;
    const-string/jumbo v2, "Kate Bright"

    iput-object v2, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->name:Ljava/lang/String;

    .line 491
    const-string/jumbo v2, "Hola!"

    iput-object v2, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->message:Ljava/lang/String;

    .line 492
    const/4 v2, 0x5

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->id:I

    .line 493
    iput v6, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->unread_count:I

    .line 494
    iput-boolean v6, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->pinned:Z

    .line 495
    iput-boolean v6, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->muted:Z

    .line 496
    iput v6, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->type:I

    .line 497
    add-int/lit16 v2, v1, -0x4650

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->date:I

    .line 498
    iput-boolean v6, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->verified:Z

    .line 499
    iput-boolean v6, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->isMedia:Z

    .line 500
    iput-boolean v6, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->sent:Z

    .line 501
    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity$DialogsAdapter;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 503
    new-instance v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    .end local v0    # "customDialog":Lorg/telegram/ui/Cells/DialogCell$CustomDialog;
    invoke-direct {v0}, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;-><init>()V

    .line 504
    .restart local v0    # "customDialog":Lorg/telegram/ui/Cells/DialogCell$CustomDialog;
    const-string/jumbo v2, "Nick K"

    iput-object v2, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->name:Ljava/lang/String;

    .line 505
    const-string/jumbo v2, "These are not the droids you are looking for"

    iput-object v2, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->message:Ljava/lang/String;

    .line 506
    const/4 v2, 0x6

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->id:I

    .line 507
    iput v6, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->unread_count:I

    .line 508
    iput-boolean v6, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->pinned:Z

    .line 509
    iput-boolean v6, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->muted:Z

    .line 510
    iput v6, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->type:I

    .line 511
    add-int/lit16 v2, v1, -0x5460

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->date:I

    .line 512
    iput-boolean v7, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->verified:Z

    .line 513
    iput-boolean v6, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->isMedia:Z

    .line 514
    iput-boolean v6, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->sent:Z

    .line 515
    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity$DialogsAdapter;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 517
    new-instance v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    .end local v0    # "customDialog":Lorg/telegram/ui/Cells/DialogCell$CustomDialog;
    invoke-direct {v0}, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;-><init>()V

    .line 518
    .restart local v0    # "customDialog":Lorg/telegram/ui/Cells/DialogCell$CustomDialog;
    const-string/jumbo v2, "Adler Toberg"

    iput-object v2, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->name:Ljava/lang/String;

    .line 519
    const-string/jumbo v2, "Did someone say peanut butter?"

    iput-object v2, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->message:Ljava/lang/String;

    .line 520
    iput v6, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->id:I

    .line 521
    iput v6, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->unread_count:I

    .line 522
    iput-boolean v6, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->pinned:Z

    .line 523
    iput-boolean v6, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->muted:Z

    .line 524
    iput v6, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->type:I

    .line 525
    add-int/lit16 v2, v1, -0x6270

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->date:I

    .line 526
    iput-boolean v7, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->verified:Z

    .line 527
    iput-boolean v6, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->isMedia:Z

    .line 528
    iput-boolean v6, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->sent:Z

    .line 529
    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity$DialogsAdapter;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 530
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 534
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$DialogsAdapter;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 565
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$DialogsAdapter;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 566
    const/4 v0, 0x1

    .line 568
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z
    .locals 2
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    const/4 v0, 0x1

    .line 539
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v1

    if-eq v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBindViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V
    .locals 2
    .param p1, "viewHolder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .param p2, "i"    # I

    .prologue
    .line 556
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v1

    if-nez v1, :cond_0

    .line 557
    iget-object v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/DialogCell;

    .line 558
    .local v0, "cell":Lorg/telegram/ui/Cells/DialogCell;
    invoke-virtual {p0}, Lorg/telegram/ui/ThemePreviewActivity$DialogsAdapter;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq p2, v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, v0, Lorg/telegram/ui/Cells/DialogCell;->useSeparator:Z

    .line 559
    iget-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity$DialogsAdapter;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/DialogCell;->setDialog(Lorg/telegram/ui/Cells/DialogCell$CustomDialog;)V

    .line 561
    .end local v0    # "cell":Lorg/telegram/ui/Cells/DialogCell;
    :cond_0
    return-void

    .line 558
    .restart local v0    # "cell":Lorg/telegram/ui/Cells/DialogCell;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .locals 4
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 544
    const/4 v0, 0x0

    .line 545
    .local v0, "view":Landroid/view/View;
    if-nez p2, :cond_1

    .line 546
    new-instance v0, Lorg/telegram/ui/Cells/DialogCell;

    .end local v0    # "view":Landroid/view/View;
    iget-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity$DialogsAdapter;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Cells/DialogCell;-><init>(Landroid/content/Context;Z)V

    .line 550
    .restart local v0    # "view":Landroid/view/View;
    :cond_0
    :goto_0
    new-instance v1, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 551
    new-instance v1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object v1

    .line 547
    :cond_1
    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 548
    new-instance v0, Lorg/telegram/ui/Cells/LoadingCell;

    .end local v0    # "view":Landroid/view/View;
    iget-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity$DialogsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/LoadingCell;-><init>(Landroid/content/Context;)V

    .restart local v0    # "view":Landroid/view/View;
    goto :goto_0
.end method
