.class final Lcom/google/firebase/iid/zzm;
.super Landroid/os/Handler;


# instance fields
.field private synthetic zzckJ:Lcom/google/firebase/iid/zzl;


# direct methods
.method constructor <init>(Lcom/google/firebase/iid/zzl;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/iid/zzm;->zzckJ:Lcom/google/firebase/iid/zzl;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/iid/zzm;->zzckJ:Lcom/google/firebase/iid/zzl;

    invoke-virtual {v0, p1}, Lcom/google/firebase/iid/zzl;->zzc(Landroid/os/Message;)V

    return-void
.end method
