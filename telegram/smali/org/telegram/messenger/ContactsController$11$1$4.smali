.class Lorg/telegram/messenger/ContactsController$11$1$4;
.super Ljava/lang/Object;
.source "ContactsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/ContactsController$11$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/messenger/ContactsController$11$1;

.field final synthetic val$contactsDictionary:Landroid/util/SparseArray;

.field final synthetic val$sectionsDict:Ljava/util/HashMap;

.field final synthetic val$sectionsDictMutual:Ljava/util/HashMap;

.field final synthetic val$sortedSectionsArray:Ljava/util/ArrayList;

.field final synthetic val$sortedSectionsArrayMutual:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/ContactsController$11$1;Landroid/util/SparseArray;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$2"    # Lorg/telegram/messenger/ContactsController$11$1;

    .prologue
    .line 1310
    iput-object p1, p0, Lorg/telegram/messenger/ContactsController$11$1$4;->this$2:Lorg/telegram/messenger/ContactsController$11$1;

    iput-object p2, p0, Lorg/telegram/messenger/ContactsController$11$1$4;->val$contactsDictionary:Landroid/util/SparseArray;

    iput-object p3, p0, Lorg/telegram/messenger/ContactsController$11$1$4;->val$sectionsDict:Ljava/util/HashMap;

    iput-object p4, p0, Lorg/telegram/messenger/ContactsController$11$1$4;->val$sectionsDictMutual:Ljava/util/HashMap;

    iput-object p5, p0, Lorg/telegram/messenger/ContactsController$11$1$4;->val$sortedSectionsArray:Ljava/util/ArrayList;

    iput-object p6, p0, Lorg/telegram/messenger/ContactsController$11$1$4;->val$sortedSectionsArrayMutual:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1313
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController$11$1$4;->this$2:Lorg/telegram/messenger/ContactsController$11$1;

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController$11$1;->this$1:Lorg/telegram/messenger/ContactsController$11;

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController$11;->this$0:Lorg/telegram/messenger/ContactsController;

    iget-object v1, p0, Lorg/telegram/messenger/ContactsController$11$1$4;->this$2:Lorg/telegram/messenger/ContactsController$11$1;

    iget-object v1, v1, Lorg/telegram/messenger/ContactsController$11$1;->this$1:Lorg/telegram/messenger/ContactsController$11;

    iget-object v1, v1, Lorg/telegram/messenger/ContactsController$11;->val$contactsArr:Ljava/util/ArrayList;

    iput-object v1, v0, Lorg/telegram/messenger/ContactsController;->contacts:Ljava/util/ArrayList;

    .line 1314
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController$11$1$4;->this$2:Lorg/telegram/messenger/ContactsController$11$1;

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController$11$1;->this$1:Lorg/telegram/messenger/ContactsController$11;

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController$11;->this$0:Lorg/telegram/messenger/ContactsController;

    iget-object v1, p0, Lorg/telegram/messenger/ContactsController$11$1$4;->val$contactsDictionary:Landroid/util/SparseArray;

    iput-object v1, v0, Lorg/telegram/messenger/ContactsController;->contactsDict:Landroid/util/SparseArray;

    .line 1315
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController$11$1$4;->this$2:Lorg/telegram/messenger/ContactsController$11$1;

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController$11$1;->this$1:Lorg/telegram/messenger/ContactsController$11;

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController$11;->this$0:Lorg/telegram/messenger/ContactsController;

    iget-object v1, p0, Lorg/telegram/messenger/ContactsController$11$1$4;->val$sectionsDict:Ljava/util/HashMap;

    iput-object v1, v0, Lorg/telegram/messenger/ContactsController;->usersSectionsDict:Ljava/util/HashMap;

    .line 1316
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController$11$1$4;->this$2:Lorg/telegram/messenger/ContactsController$11$1;

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController$11$1;->this$1:Lorg/telegram/messenger/ContactsController$11;

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController$11;->this$0:Lorg/telegram/messenger/ContactsController;

    iget-object v1, p0, Lorg/telegram/messenger/ContactsController$11$1$4;->val$sectionsDictMutual:Ljava/util/HashMap;

    iput-object v1, v0, Lorg/telegram/messenger/ContactsController;->usersMutualSectionsDict:Ljava/util/HashMap;

    .line 1317
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController$11$1$4;->this$2:Lorg/telegram/messenger/ContactsController$11$1;

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController$11$1;->this$1:Lorg/telegram/messenger/ContactsController$11;

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController$11;->this$0:Lorg/telegram/messenger/ContactsController;

    iget-object v1, p0, Lorg/telegram/messenger/ContactsController$11$1$4;->val$sortedSectionsArray:Ljava/util/ArrayList;

    iput-object v1, v0, Lorg/telegram/messenger/ContactsController;->sortedUsersSectionsArray:Ljava/util/ArrayList;

    .line 1318
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController$11$1$4;->this$2:Lorg/telegram/messenger/ContactsController$11$1;

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController$11$1;->this$1:Lorg/telegram/messenger/ContactsController$11;

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController$11;->this$0:Lorg/telegram/messenger/ContactsController;

    iget-object v1, p0, Lorg/telegram/messenger/ContactsController$11$1$4;->val$sortedSectionsArrayMutual:Ljava/util/ArrayList;

    iput-object v1, v0, Lorg/telegram/messenger/ContactsController;->sortedUsersMutualSectionsArray:Ljava/util/ArrayList;

    .line 1319
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController$11$1$4;->this$2:Lorg/telegram/messenger/ContactsController$11$1;

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController$11$1;->this$1:Lorg/telegram/messenger/ContactsController$11;

    iget v0, v0, Lorg/telegram/messenger/ContactsController$11;->val$from:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 1320
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->access$400()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1321
    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController$11$1$4;->this$2:Lorg/telegram/messenger/ContactsController$11$1;

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController$11$1;->this$1:Lorg/telegram/messenger/ContactsController$11;

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController$11;->this$0:Lorg/telegram/messenger/ContactsController;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lorg/telegram/messenger/ContactsController;->access$502(Lorg/telegram/messenger/ContactsController;Z)Z

    .line 1322
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1324
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController$11$1$4;->this$2:Lorg/telegram/messenger/ContactsController$11$1;

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController$11$1;->this$1:Lorg/telegram/messenger/ContactsController$11;

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController$11;->this$0:Lorg/telegram/messenger/ContactsController;

    invoke-static {v0}, Lorg/telegram/messenger/ContactsController;->access$1400(Lorg/telegram/messenger/ContactsController;)V

    .line 1325
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController$11$1$4;->this$2:Lorg/telegram/messenger/ContactsController$11$1;

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController$11$1;->this$1:Lorg/telegram/messenger/ContactsController$11;

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController$11;->this$0:Lorg/telegram/messenger/ContactsController;

    iget-object v1, p0, Lorg/telegram/messenger/ContactsController$11$1$4;->this$2:Lorg/telegram/messenger/ContactsController$11$1;

    iget-object v1, v1, Lorg/telegram/messenger/ContactsController$11$1;->this$1:Lorg/telegram/messenger/ContactsController$11;

    iget-object v1, v1, Lorg/telegram/messenger/ContactsController$11;->val$contactsArr:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lorg/telegram/messenger/ContactsController;->access$1100(Lorg/telegram/messenger/ContactsController;Ljava/util/ArrayList;)V

    .line 1327
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->contactsDidLoaded:I

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1329
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController$11$1$4;->this$2:Lorg/telegram/messenger/ContactsController$11$1;

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController$11$1;->this$1:Lorg/telegram/messenger/ContactsController$11;

    iget v0, v0, Lorg/telegram/messenger/ContactsController$11;->val$from:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/ContactsController$11$1$4;->this$2:Lorg/telegram/messenger/ContactsController$11$1;

    iget-boolean v0, v0, Lorg/telegram/messenger/ContactsController$11$1;->val$isEmpty:Z

    if-nez v0, :cond_1

    .line 1330
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController$11$1$4;->this$2:Lorg/telegram/messenger/ContactsController$11$1;

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController$11$1;->this$1:Lorg/telegram/messenger/ContactsController$11;

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController$11;->this$0:Lorg/telegram/messenger/ContactsController;

    invoke-static {v0}, Lorg/telegram/messenger/ContactsController;->access$1500(Lorg/telegram/messenger/ContactsController;)V

    .line 1334
    :goto_0
    return-void

    .line 1322
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1332
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController$11$1$4;->this$2:Lorg/telegram/messenger/ContactsController$11$1;

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController$11$1;->this$1:Lorg/telegram/messenger/ContactsController$11;

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController$11;->this$0:Lorg/telegram/messenger/ContactsController;

    invoke-static {v0}, Lorg/telegram/messenger/ContactsController;->access$1600(Lorg/telegram/messenger/ContactsController;)V

    goto :goto_0
.end method
