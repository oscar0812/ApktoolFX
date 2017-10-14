.class public interface abstract Lcom/google/android/search/verification/api/ISearchActionVerificationService;
.super Ljava/lang/Object;
.source "ISearchActionVerificationService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/search/verification/api/ISearchActionVerificationService$Stub;
    }
.end annotation


# virtual methods
.method public abstract getVersion()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract isSearchAction(Landroid/content/Intent;Landroid/os/Bundle;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
