.class public abstract Lcom/google/android/gms/internal/adj;
.super Lcom/google/android/gms/internal/adp;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lcom/google/android/gms/internal/adj",
        "<TM;>;>",
        "Lcom/google/android/gms/internal/adp;"
    }
.end annotation


# instance fields
.field protected zzcso:Lcom/google/android/gms/internal/adl;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/adp;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/adj;->zzLN()Lcom/google/android/gms/internal/adj;

    move-result-object v0

    return-object v0
.end method

.method public zzLN()Lcom/google/android/gms/internal/adj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TM;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Lcom/google/android/gms/internal/adp;->zzLO()Lcom/google/android/gms/internal/adp;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/adj;

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/adn;->zza(Lcom/google/android/gms/internal/adj;Lcom/google/android/gms/internal/adj;)V

    return-object v0
.end method

.method public synthetic zzLO()Lcom/google/android/gms/internal/adp;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/adj;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/adj;

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/internal/adk;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/adk",
            "<TM;TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/adj;->zzcso:Lcom/google/android/gms/internal/adl;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/adj;->zzcso:Lcom/google/android/gms/internal/adl;

    iget v2, p1, Lcom/google/android/gms/internal/adk;->tag:I

    ushr-int/lit8 v2, v2, 0x3

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/adl;->zzcx(I)Lcom/google/android/gms/internal/adm;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/adm;->zzb(Lcom/google/android/gms/internal/adk;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public zza(Lcom/google/android/gms/internal/adh;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/adj;->zzcso:Lcom/google/android/gms/internal/adl;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/adj;->zzcso:Lcom/google/android/gms/internal/adl;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/adl;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/adj;->zzcso:Lcom/google/android/gms/internal/adl;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/adl;->zzcy(I)Lcom/google/android/gms/internal/adm;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/adm;->zza(Lcom/google/android/gms/internal/adh;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected final zza(Lcom/google/android/gms/internal/adg;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->getPosition()I

    move-result v0

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/adg;->zzcm(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    ushr-int/lit8 v1, p2, 0x3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->getPosition()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/adg;->zzp(II)[B

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/adr;

    invoke-direct {v2, p2, v0}, Lcom/google/android/gms/internal/adr;-><init>(I[B)V

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/google/android/gms/internal/adj;->zzcso:Lcom/google/android/gms/internal/adl;

    if-nez v3, :cond_2

    new-instance v3, Lcom/google/android/gms/internal/adl;

    invoke-direct {v3}, Lcom/google/android/gms/internal/adl;-><init>()V

    iput-object v3, p0, Lcom/google/android/gms/internal/adj;->zzcso:Lcom/google/android/gms/internal/adl;

    :goto_1
    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/adm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/adm;-><init>()V

    iget-object v3, p0, Lcom/google/android/gms/internal/adj;->zzcso:Lcom/google/android/gms/internal/adl;

    invoke-virtual {v3, v1, v0}, Lcom/google/android/gms/internal/adl;->zza(ILcom/google/android/gms/internal/adm;)V

    :cond_1
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/adm;->zza(Lcom/google/android/gms/internal/adr;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/adj;->zzcso:Lcom/google/android/gms/internal/adl;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/adl;->zzcx(I)Lcom/google/android/gms/internal/adm;

    move-result-object v0

    goto :goto_1
.end method

.method protected zzn()I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/adj;->zzcso:Lcom/google/android/gms/internal/adl;

    if-eqz v1, :cond_0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/adj;->zzcso:Lcom/google/android/gms/internal/adl;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/adl;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/adj;->zzcso:Lcom/google/android/gms/internal/adl;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/adl;->zzcy(I)Lcom/google/android/gms/internal/adm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/adm;->zzn()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :cond_1
    return v1
.end method
